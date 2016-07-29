Class {
	#name : #MCDeleteField,
	#superclass : #MCDelete,
	#category : #'Moose-Changes-Model'
}

{ #category : #'as yet unclassified' }
MCDeleteField class >> annotation [
	<MSEClass: #DeleteField super: #MCDelete>
	<package: #MooseChange>

]

{ #category : #accessing }
MCDeleteField >> changeForList [
	^'field'
]
