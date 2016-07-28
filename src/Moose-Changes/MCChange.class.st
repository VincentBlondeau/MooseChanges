Class {
	#name : #MCChange,
	#superclass : #MCAbstractChange,
	#category : #'Moose-Changes-Model'
}

{ #category : #'as yet unclassified' }
MCChange class >> annotation [
	<MSEClass: #Change super: #MCAbstractChange>
	<package: #MooseChange>
	<abstract>
]

{ #category : #'as yet unclassified' }
MCChange class >> changeFor [
	^ #(Simple)
]
