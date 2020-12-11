Class {
	#name : #ClassModel,
	#superclass : #Object,
	#instVars : [
		'methods',
		'name',
		'numDirectInstVars',
		'numClassVars',
		'numTotalInstVars',
		'numSuperclasses',
		'isTestCase'
	],
	#category : #'SourceCodeDataCollector-Models'
}

{ #category : #accessing }
ClassModel >> isTestCase [
	^ isTestCase
]

{ #category : #accessing }
ClassModel >> isTestCase: anObject [
	isTestCase := anObject
]

{ #category : #accessing }
ClassModel >> methods [
	^ methods
]

{ #category : #accessing }
ClassModel >> methods: anObject [
	methods := anObject
]

{ #category : #accessing }
ClassModel >> name [
	^ name
]

{ #category : #accessing }
ClassModel >> name: anObject [
	name := anObject
]

{ #category : #accessing }
ClassModel >> numClassVars [
	^ numClassVars
]

{ #category : #accessing }
ClassModel >> numClassVars: anObject [
	numClassVars := anObject
]

{ #category : #accessing }
ClassModel >> numDirectInstVars [
	^ numDirectInstVars
]

{ #category : #accessing }
ClassModel >> numDirectInstVars: anObject [
	numDirectInstVars := anObject
]

{ #category : #accessing }
ClassModel >> numSuperclasses [
	^ numSuperclasses
]

{ #category : #accessing }
ClassModel >> numSuperclasses: anObject [
	numSuperclasses := anObject
]

{ #category : #accessing }
ClassModel >> numTotalInstVars [
	^ numTotalInstVars
]

{ #category : #accessing }
ClassModel >> numTotalInstVars: anObject [
	numTotalInstVars := anObject
]
