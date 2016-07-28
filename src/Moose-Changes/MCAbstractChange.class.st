Class {
	#name : #MCAbstractChange,
	#superclass : #MooseEntity,
	#instVars : [
		'type',
		'name',
		'outgoingDependencies',
		'incomingDependencies'
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
