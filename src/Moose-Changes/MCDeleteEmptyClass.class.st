Class {
	#name : #MCDeleteEmptyClass,
	#superclass : #MCDelete,
	#category : #'Moose-Changes-Model'
}

{ #category : #'as yet unclassified' }
MCDeleteEmptyClass class >> annotation [
	<MSEClass: #DeleteEmptyClass super: #MCDelete>
	<package: #MooseChange>

]

{ #category : #accessing }
MCDeleteEmptyClass >> changeForList [
	^ 'class'
]
