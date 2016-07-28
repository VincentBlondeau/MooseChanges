Class {
	#name : #MCDeleteComponent,
	#superclass : #MCAbstractComponentChange,
	#category : #'Moose-Changes-Model'
}

{ #category : #'as yet unclassified' }
MCDeleteComponent class >> changeFor [
	^ #(Composite)
]

{ #category : #'as yet unclassified' }
MCDeleteComponent class >> delEntityTypedAs: aClass named: aMooseName container: aFAMIXContainer [
	^ self entityTypedAs: aClass named: aMooseName container: aFAMIXContainer
]
