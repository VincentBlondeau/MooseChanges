Class {
	#name : #MCDelete,
	#superclass : #MCAbstractChange,
	#category : #'Moose-Changes-Model'
}

{ #category : #'as yet unclassified' }
MCDelete class >> annotation [
	<MSEClass: #Delete super: #MCAbstractChange>
	<package: #MooseChange>
	<abstract>
]

{ #category : #'as yet unclassified' }
MCDelete class >> changeFor [
	^ #(Simple Composite Link)
]
