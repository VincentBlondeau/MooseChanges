Class {
	#name : #MCAddEmptyClass,
	#superclass : #MCAdd,
	#category : #'Moose-Changes-Model'
}

{ #category : #'as yet unclassified' }
MCAddEmptyClass class >> annotation [
	<MSEClass: #AddEmptyClass super: #MCAdd>
	<package: #MooseChange>
]

{ #category : #accessing }
MCAddEmptyClass >> changeForList [
	^ 'class'
]
