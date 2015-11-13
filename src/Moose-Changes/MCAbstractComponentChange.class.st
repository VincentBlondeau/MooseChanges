Class {
	#name : #MCAbstractComponentChange,
	#superclass : #MCAbstractChange,
	#instVars : [
		'container'
	],
	#category : #'Moose-Changes'
}

{ #category : #'class initialization' }
MCAbstractComponentChange class >> entityTypedAs: aClass named: aMooseName container: aFAMIXContainer [
	^ self new
		type: aClass;
		name: aMooseName;
		container: aFAMIXContainer;
		yourself
]

{ #category : #accessing }
MCAbstractComponentChange >> container [
	^ container
]

{ #category : #accessing }
MCAbstractComponentChange >> container: anObject [
	container := anObject
]
