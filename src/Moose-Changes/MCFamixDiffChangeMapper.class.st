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
	changes := MCFamixDiffChangeMapper new createChangesFrom: (diff sortedChanges select: [ :e | e entity isStub not ]).
	tests := (changes collect: [ :e | e selectedTests ] as: Set) flatten.
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
	aCollectionOfSelectedTests do: [ :entity | stream << entity mooseName ] separatedBy: [ stream crlf ] ]
		ensure: [ stream close ]
]
