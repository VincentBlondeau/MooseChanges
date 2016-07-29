Class {
	#name : #MCAbstractChangeMapper,
	#superclass : #Object,
	#category : #'Moose-Changes-Importer'
}

{ #category : #'as yet unclassified' }
MCAbstractChangeMapper >> modelSuperClass [
	^ MooseModel meta elementNamed: 'MooseChange.AbstractChange'
]
