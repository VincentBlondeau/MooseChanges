Class {
	#name : #MCAddField,
	#superclass : #MCAdd,
	#category : #'Moose-Changes-Model'
}

{ #category : #'as yet unclassified' }
MCAddField class >> annotation [
	<MSEClass: #AddField super: #MCAdd>
	<package: #MooseChange>

]

{ #category : #accessing }
MCAddField >> changeForList [
	^'field'
]
