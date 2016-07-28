Class {
	#name : #MCAddComponent,
	#superclass : #MCAbstractComponentChange,
	#category : #'Moose-Changes-Model'
}

{ #category : #'class initialization' }
MCAddComponent class >> addEntityTypedAs: aClass named: aMooseName container: aFAMIXContainer [
	^ self entityTypedAs: aClass named: aMooseName container: aFAMIXContainer
]

{ #category : #'as yet unclassified' }
MCAddComponent class >> changeFor [
	^ #(#Composite)
]
