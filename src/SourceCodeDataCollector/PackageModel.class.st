Class {
	#name : #PackageModel,
	#superclass : #Object,
	#instVars : [
		'methods',
		'name',
		'classes'
	],
	#category : #'SourceCodeDataCollector-Models'
}

{ #category : #accessing }
PackageModel >> classes [
	classes ifNil: [ 
		self collectClasses ].
	^ classes
	
]

{ #category : #accessing }
PackageModel >> collectClasses [
	| actualClasses |
	actualClasses := self methods collect: [ :m | m methodClass ] as: Set.
	actualClasses := actualClasses reject: [ :n | n isMeta ].
	
	classes := actualClasses collect: [ :c |
		ClassModel new
			name: c name;
			numDirectInstVars: c slots size;
		 	numTotalInstVars: c instSize;
			numClassVars: c class slots size;
			numSuperclasses: c allSuperclasses size;
			isTestCase: c isTestCase	]
	
	
]

{ #category : #accessing }
PackageModel >> methods [
	^ methods
]

{ #category : #accessing }
PackageModel >> methods: anObject [
	methods := anObject
]

{ #category : #accessing }
PackageModel >> name [
	^ name
]

{ #category : #accessing }
PackageModel >> name: anObject [
	name := anObject
]
