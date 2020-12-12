Class {
	#name : #MethodCollector,
	#superclass : #Object,
	#instVars : [
		'methodId'
	],
	#category : #'SourceCodeDataCollector-Controllers'
}

{ #category : #'as yet unclassified' }
MethodCollector >> collectDataFromMethod: aMethod [
	| method numArgs numLocals tokens tokenTypes subtokens words |
	numArgs := numLocals := 0.
	[ | ast |
	  ast := aMethod ast.
	  tokens := aMethod tokens.
	  numArgs := ast argumentNames size.
	  numLocals := ast temporaryNames size.
	  tokenTypes := aMethod tokenTypes.
	  subtokens := aMethod subtokens.
	  words := aMethod wordsFromIdentifierNames.
	 ] on: SyntaxErrorNotification do: [: e | e return: 1  ].
	
	
	method := MethodModel new
		id: self methodId;
		name: aMethod selector;
		methodClass: aMethod methodClass;
		protocol: aMethod protocol;
		sourceCode: aMethod sourceCode;
		linesOfCode: aMethod linesOfCode;
		numArgs: numArgs;
		numLocals: numLocals;
		numLiterals: aMethod numLiterals;
		tokens: tokens;
		tokenTypes: tokenTypes;
		subtokens: subtokens;
		words: words;
		allWords: aMethod wordsFromSourceCode;
		isTestClass: aMethod methodClass isTestCase.
		
	self updateMethodId.
	^ method
]

{ #category : #'as yet unclassified' }
MethodCollector >> collectMethodsFromPackage: aPackage [
	| methods counter |
	methods := OrderedCollection new.
	counter := 0.
	
	aPackage methods
		do: [ :aMethod |
			methods add: (self collectDataFromMethod: aMethod).
			"counter := counter + 1" ]
		"displayingProgress: [ :aMethod | '(', counter asString, '/', aPackage methods size asString, ' methods) ', aMethod selector ]".

	^ PackageModel new
		name: aPackage name;
		methods: methods asArray.
]

{ #category : #'as yet unclassified' }
MethodCollector >> collectMethodsFromProject: aProjectModel [
	| packages packageModels count |
	packageModels := OrderedCollection new.
	count := 1.
	
	packages := self packagesOfProject: aProjectModel.
	
	packages
		do: [ :package |
			packageModels add: (self collectMethodsFromPackage: package).
			count := count + 1 ]
		displayingProgress: [ :package | '(', count asString, '/', packages size asString, ' packages) ', package name ].
	
	aProjectModel packages: packageModels asArray.
	
	^ aProjectModel
]

{ #category : #'as yet unclassified' }
MethodCollector >> collectMethodsFromProjects: aCollectionOfProjectModels [
	| count |
	count := 1.
	
	aCollectionOfProjectModels
		do: [ :projectModel |
			self collectMethodsFromProject: projectModel.
			count := count + 1 ]
		displayingProgress: [ :projectModel | '(', count asString, '/', aCollectionOfProjectModels size asString, ' projects) ', projectModel name ].
	
	^ aCollectionOfProjectModels.
]

{ #category : #accessing }
MethodCollector >> initialMethodId [
	^ 1
]

{ #category : #initialization }
MethodCollector >> initialize [ 
	super initialize.
	self methodId: self initialMethodId.
]

{ #category : #accessing }
MethodCollector >> methodId [
	^ methodId
]

{ #category : #accessing }
MethodCollector >> methodId: anObject [
	methodId := anObject
]

{ #category : #'as yet unclassified' }
MethodCollector >> packagesOfProject: aProjectModel [	
	^ aProjectModel prefixes flatCollect: [ :prefix |
		Smalltalk image packages
			select: [ :p | p name beginsWith: prefix ] ].
]

{ #category : #accessing }
MethodCollector >> updateMethodId [
	self methodId: (self methodId + 1)
]
