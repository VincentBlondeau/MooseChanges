Class {
	#name : #MCFamixDiffChangeMapperTest,
	#superclass : #FamixDiffSortTest,
	#category : #'Moose-Changes-Importer'
}

{ #category : #'as yet unclassified' }
MCFamixDiffChangeMapperTest >> testFamixDiffChangeMapper [
	| sort changes |
	snapshot
		base: (self createModelWith: #(#'Moose-TestResources-ModelDiff-P4' #'Moose-TestResources-ModelDiff-P3')).
	snapshot
		target: (self createModelWith: #(#'Moose-TestResources-ModelDiff-P2' #'Moose-TestResources-ModelDiff-P3')).
	sort := snapshot diff sortedChanges.
	changes := MCFamixDiffChangeMapper new createChangesFrom: sort.
	self assert: changes size equals: 1
]
