Class {
	#name : #MCChangeLookup,
	#superclass : #MCChange,
	#category : #'Moose-Changes-Model'
}

{ #category : #'as yet unclassified' }
MCChangeLookup class >> annotation [
	<MSEClass: #ChangeLookup super: #MCChange>
	<package: #MooseChange>

]

{ #category : #'as yet unclassified' }
MCChangeLookup >> changeForList [
	^ 'lookup'
]
