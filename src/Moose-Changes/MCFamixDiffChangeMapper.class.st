Class {
	#name : #MCFamixDiffChangeMapper,
	#superclass : #MCAbstractChangeMapper,
	#instVars : [
		'sourceModel',
		'targetModel',
		'selectedTestsOutput'
	],
	#category : #'Moose-Changes-Importer'
}

{ #category : #'as yet unclassified' }
MCFamixDiffChangeMapper class >> modelSource: aFileReferenceSource modelTarget: aFileReferenceTarget selectedTests: aFileReferenceOutput [
	^ self new
		modelSourceFile: aFileReferenceSource;
		modelTargetFile: aFileReferenceTarget;
		selectedTestsFile: aFileReferenceOutput;
		run;
		yourself
]

{ #category : #'as yet unclassified' }
MCFamixDiffChangeMapper >> createChangesFrom: aCollectionOfChanges [
	| visitor |
	visitor := MCFamixDiffChangeVisitor new.
	aCollectionOfChanges do: [ :change | change accept: visitor ].
	^ visitor changes
]

{ #category : #'as yet unclassified' }
MCFamixDiffChangeMapper >> importModelFromFile: aFileReference [
	^ MooseModel importFromMSEStream: aFileReference readStream
]

{ #category : #'as yet unclassified' }
MCFamixDiffChangeMapper >> modelSourceFile: aFileReference [
	sourceModel := self importModelFromFile: aFileReference
]

{ #category : #'as yet unclassified' }
MCFamixDiffChangeMapper >> modelTargetFile: aFileReference [
	targetModel := self importModelFromFile: aFileReference
]

{ #category : #'as yet unclassified' }
MCFamixDiffChangeMapper >> run [
	| diff changes tests |
	diff := FamixOrderedDiff new.
	diff base: sourceModel.
	diff target: targetModel.
	diff diff sort.
	changes := self
		createChangesFrom: (diff sortedChanges select: [ :e | e entity isStub not ]).
	tests := (changes collect: [ :e | e selectedTests ] as: Set) flatten asSet
		sorted: [ :a :b | a mooseName < b mooseName ].
	self writeSelectedTests: tests
]

{ #category : #'as yet unclassified' }
MCFamixDiffChangeMapper >> selectedTestsFile: aFileReference [ 
	selectedTestsOutput := aFileReference 
]

{ #category : #'as yet unclassified' }
MCFamixDiffChangeMapper >> writeSelectedTests: aCollectionOfSelectedTests [
	| stream |
	selectedTestsOutput parent ensureCreateDirectory.
	selectedTestsOutput ensureDelete.
	[ stream := selectedTestsOutput writeStream.
	(aCollectionOfSelectedTests collect: #mooseName as: Set) asOrderedCollection sorted
		do: [ :entityName | stream << entityName ]
		separatedBy: [ stream crlf ] ]
		ensure: [ stream close ]
]
