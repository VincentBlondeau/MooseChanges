Class {
	#name : #MCAdd,
	#superclass : #MCAbstractChange,
	#category : #'Moose-Changes-Model'
}

{ #category : #meta }
MCAdd class >> annotation [
	<MSEClass: #Add super: #MCAbstractChange>
	<package: #MooseChange>
	<abstract>
]

{ #category : #'as yet unclassified' }
MCAdd class >> changeFor [
	^ #(Simple Composite Link)
]

{ #category : #'class initialization' }
MCAdd class >> initialize [
	MCAbstractChange changeTypeRegistry at: #add put: self 
]
