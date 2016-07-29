Class {
	#name : #MCFamixDiffChangeVisitor,
	#superclass : #MCAbstractChangeMapper,
	#instVars : [
		'changes'
	],
	#category : #'Moose-Changes-Importer'
}

{ #category : #adding }
MCFamixDiffChangeVisitor >> addChange: aMCAbstractChange [ 
	changes add: aMCAbstractChange
]

{ #category : #'as yet unclassified' }
MCFamixDiffChangeVisitor >> changeAddFameClasses [
	^ (self modelSuperClass subclasses byName: 'Add') allSubclasses , (self modelSuperClass subclasses byName: 'Change') allSubclasses
]

{ #category : #'as yet unclassified' }
MCFamixDiffChangeVisitor >> changeDelFameClasses [
	^ (self modelSuperClass subclasses byName: 'Delete') allSubclasses
		, (self modelSuperClass subclasses byName: 'Change') allSubclasses
]

{ #category : #initialization }
MCFamixDiffChangeVisitor >> initialize [
	super initialize.
	changes := OrderedCollection new
]

{ #category : #visitor }
MCFamixDiffChangeVisitor >> visitAddChange: aFamixAddChange [
	| fameClassToInstanciate change |
	aFamixAddChange entity shouldBeConsideredAsChange
		ifFalse: [ ^ self ].
	fameClassToInstanciate := self changeAddFameClasses
		detect: [ :e | e isClassForChange: aFamixAddChange entity changeType ].
	change := fameClassToInstanciate implementingClass new.
	change entity: aFamixAddChange entity.
	self addChange: change
]

{ #category : #visitor }
MCFamixDiffChangeVisitor >> visitRemovalChange: aFamixRemovalChange [
	| fameClassToInstanciate change |
	aFamixRemovalChange entity shouldBeConsideredAsChange
		ifFalse: [ ^ self ].
	fameClassToInstanciate := self changeDelFameClasses
		detect: [ :e | e isClassForChange: aFamixRemovalChange entity changeType ].
	change := fameClassToInstanciate implementingClass new.
	change entity: aFamixRemovalChange entity.
	self addChange: change
]
