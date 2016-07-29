Class {
	#name : #MCDeleteInitializer,
	#superclass : #MCDelete,
	#category : #'Moose-Changes-Model'
}

{ #category : #'as yet unclassified' }
MCDeleteInitializer class >> annotation [
	<MSEClass: #DeleteInitializer super: #MCDelete>
	<package: #MooseChange>

]

{ #category : #accessing }
MCDeleteInitializer >> changeForList [
	^ 'initializer'
]
