Class {
	#name : #MethodModel,
	#superclass : #Object,
	#instVars : [
		'id',
		'name',
		'methodClass',
		'protocol',
		'sourceCode',
		'linesOfCode',
		'numArgs',
		'numLocals',
		'numLiterals',
		'tokens',
		'tokenTypes',
		'subtokens',
		'words',
		'allWords',
		'isTestClass'
	],
	#category : #'SourceCodeDataCollector-Models'
}

{ #category : #accessing }
MethodModel >> allWords [
	^ allWords
]

{ #category : #accessing }
MethodModel >> allWords: anObject [
	allWords := anObject
]

{ #category : #accessing }
MethodModel >> id [
	^ id
]

{ #category : #accessing }
MethodModel >> id: anObject [
	id := anObject
]

{ #category : #accessing }
MethodModel >> isTestClass [
	^ isTestClass
]

{ #category : #accessing }
MethodModel >> isTestClass: anObject [
	isTestClass := anObject
]

{ #category : #accessing }
MethodModel >> linesOfCode [
	^ linesOfCode
]

{ #category : #accessing }
MethodModel >> linesOfCode: anObject [
	linesOfCode := anObject
]

{ #category : #accessing }
MethodModel >> methodClass [
	^ methodClass
]

{ #category : #accessing }
MethodModel >> methodClass: anObject [
	methodClass := anObject
]

{ #category : #accessing }
MethodModel >> name [
	^ name
]

{ #category : #accessing }
MethodModel >> name: anObject [
	name := anObject
]

{ #category : #accessing }
MethodModel >> numArgs [
	^ numArgs
]

{ #category : #accessing }
MethodModel >> numArgs: anInt [
	numArgs := anInt

]

{ #category : #accessing }
MethodModel >> numLiterals [
	^ numLiterals

]

{ #category : #accessing }
MethodModel >> numLiterals: anInt [
	numLiterals := anInt


]

{ #category : #accessing }
MethodModel >> numLocals [
	^ numLocals

]

{ #category : #accessing }
MethodModel >> numLocals: anInt [
	numLocals := anInt

]

{ #category : #accessing }
MethodModel >> protocol [
	^ protocol
]

{ #category : #accessing }
MethodModel >> protocol: anObject [
	protocol := anObject
]

{ #category : #accessing }
MethodModel >> sourceCode [
	^ sourceCode
]

{ #category : #accessing }
MethodModel >> sourceCode: anObject [
	sourceCode := anObject
]

{ #category : #accessing }
MethodModel >> subtokens [
	^ subtokens
]

{ #category : #accessing }
MethodModel >> subtokens: anObject [
	subtokens := anObject
]

{ #category : #accessing }
MethodModel >> tokenTypes [
	^ tokenTypes
]

{ #category : #accessing }
MethodModel >> tokenTypes: anObject [
	tokenTypes := anObject
]

{ #category : #accessing }
MethodModel >> tokens [
	^ tokens
]

{ #category : #accessing }
MethodModel >> tokens: anObject [
	tokens := anObject
]

{ #category : #accessing }
MethodModel >> words [
	^ words
]

{ #category : #accessing }
MethodModel >> words: anObject [
	words := anObject
]
