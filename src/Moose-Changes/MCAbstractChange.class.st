Class {
	#name : #MCAbstractChange,
	#superclass : #MooseEntity,
	#instVars : [
		'famixDiffEntity',
		'type',
		'name',
		'outgoingDependencies',
		'incomingDependencies',
		'entity'
	],
	#classVars : [
		'ChangeTypeRegistry'
	],
	#category : #'Moose-Changes-Model'
}

{ #category : #meta }
MCAbstractChange class >> annotation [
	<MSEClass: #AbstractChange super: #MooseEntity>
	<package: #MooseChange>
	<abstract>
]

{ #category : #'as yet unclassified' }
MCAbstractChange class >> changeFor [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
MCAbstractChange class >> changeTypeRegistry [
	^ ChangeTypeRegistry
]

{ #category : #'class initialization' }
MCAbstractChange class >> initialize [
	ChangeTypeRegistry := Dictionary new
]

{ #category : #'as yet unclassified' }
MCAbstractChange class >> isChangeFor: aTypeOfChange [
	^ self changeTypeList 
		includes: aTypeOfChange
]

{ #category : #accessing }
MCAbstractChange class >> types [
	^ #(Simple Composite Link)
]

{ #category : #accessing }
MCAbstractChange >> changeForList [
	<MSEProperty: #changeForList type: #String >
	<multivalued>
		^self subclassResponsibility 
]

{ #category : #accessing }
MCAbstractChange >> doesNotUnderstand: aMessage [
	^ aMessage sendTo: self entity
]

{ #category : #'as yet unclassified' }
MCAbstractChange >> entity [
	<MSEProperty: #entity type: #MooseEntity>
	<MSEComment: 'Entity related to change'>
	^ entity
]

{ #category : #'as yet unclassified' }
MCAbstractChange >> entity: aMooseEntity [
	entity := aMooseEntity
]

{ #category : #'as yet unclassified' }
MCAbstractChange >> famixDiffEntity: aFamixChange [ 
	famixDiffEntity := aFamixChange 
]

{ #category : #accessing }
MCAbstractChange >> incomingDependencies [
	^ incomingDependencies
]

{ #category : #accessing }
MCAbstractChange >> incomingDependencies: anObject [
	incomingDependencies := anObject
]

{ #category : #accessing }
MCAbstractChange >> initialize [
	super initialize.
	outgoingDependencies := FMMultivalueLink on: self opposite: #parameterizableClass:.
	incomingDependencies := FMMultivalueLink on: self opposite: #parameterizableClass:
]

{ #category : #accessing }
MCAbstractChange >> name [
		<MSEProperty: #name type: #String>
	<MSEComment: 'Name of the entity'>
	^ name
]

{ #category : #accessing }
MCAbstractChange >> name: anObject [
	name := anObject
]

{ #category : #accessing }
MCAbstractChange >> outgoingDependencies [
	^ outgoingDependencies
]

{ #category : #accessing }
MCAbstractChange >> outgoingDependencies: anObject [
	outgoingDependencies := anObject
]

{ #category : #accessing }
MCAbstractChange >> printOn: stream [
	stream nextPutAll: (MooseModel meta descriptionOf: self class) name , '(' , self entity class name , ') ' , self entity mooseName
]

{ #category : #accessing }
MCAbstractChange >> separator [
	^ '::'
]

{ #category : #accessing }
MCAbstractChange >> type [
	^ type
]

{ #category : #accessing }
MCAbstractChange >> type: anObject [
	type := anObject
]
