Class {
	#name : #MCFamixDiffChangeMapper,
	#superclass : #MCAbstractChangeMapper,
	#category : #'Moose-Changes-Importer'
}

{ #category : #'as yet unclassified' }
MCFamixDiffChangeMapper >> createChangesFrom: aCollectionOfChanges [
	| visitor |
	visitor := MCFamixDiffChangeVisitor new.
	aCollectionOfChanges do: [ :change | change accept: visitor ].
	^ visitor
]
