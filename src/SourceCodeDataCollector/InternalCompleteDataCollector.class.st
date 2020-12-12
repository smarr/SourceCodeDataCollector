Class {
	#name : #InternalCompleteDataCollector,
	#superclass : #InternalDataCollector,
	#category : #SourceCodeDataCollector
}

{ #category : #accessing }
InternalCompleteDataCollector >> readProjectsMetadata [
	| rootPackageDict |
	rootPackageDict := Dictionary new.
	(RPackage allInstances
		select: [ :p | (p name beginsWith: 'BaselineOf') not ])
		do: [ :p | rootPackageDict at: (self rootPackageName: p) ifAbsentPut: p ].
	
	projectModels := rootPackageDict keys collect: [ :pName |
		ProjectModel new
			name: pName;
			prefixes: { pName };
			yourself ].
		
	1 halt.
]

{ #category : #'as yet unclassified' }
InternalCompleteDataCollector >> rootPackageName: package [
	^ (package name findTokens: '-') first asSymbol 
]
