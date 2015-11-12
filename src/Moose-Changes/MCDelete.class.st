Class {
	#name : #MCDelete,
	#superclass : #MCAbstractChange,
	#category : #'Moose-Changes'
}

{ #category : #'as yet unclassified' }
MCDelete class >> changeFor [
	^ #(Simple Composite Link)
]
