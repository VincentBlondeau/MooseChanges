Class {
	#name : #MCAddComponent,
	#superclass : #MCAbstractComponentChange,
	#category : #'Moose-Changes'
}

{ #category : #'class initialization' }
MCAddComponent class >> addEntityTypedAs: aClass named: aMooseName container: aFAMIXContainer [
	^ self new
		type: aClass;
		name: aMooseName;
		container: aFAMIXContainer;
		yourself
]

{ #category : #'as yet unclassified' }
MCAddComponent class >> changeFor [
	^ #(#Composite)
]

{ #category : #accessing }
MCAddComponent >> container [
	^ container
]

{ #category : #accessing }
MCAddComponent >> container: anObject [
	container := anObject
]
