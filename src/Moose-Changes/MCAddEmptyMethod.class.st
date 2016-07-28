Class {
	#name : #MCAddEmptyMethod,
	#superclass : #MCAdd,
	#category : #'Moose-Changes-Model'
}

{ #category : #'as yet unclassified' }
MCAddEmptyMethod class >> annotation [
	<MSEClass: #AddEmptyMethod super: #MCAdd>
	<package: #MooseChange>

]

{ #category : #'as yet unclassified' }
MCAddEmptyMethod >> changeForList [
	^'method'
]
