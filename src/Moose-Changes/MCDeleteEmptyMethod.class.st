Class {
	#name : #MCDeleteEmptyMethod,
	#superclass : #MCDelete,
	#category : #'Moose-Changes-Model'
}

{ #category : #'as yet unclassified' }
MCDeleteEmptyMethod class >> annotation [
	<MSEClass: #DeleteEmptyMethod super: #MCDelete>
	<package: #MooseChange>
	
]

{ #category : #accessing }
MCDeleteEmptyMethod >> changeForList [
	^'method'
]
