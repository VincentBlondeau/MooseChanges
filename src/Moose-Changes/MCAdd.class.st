Class {
	#name : #MCAdd,
	#superclass : #MCAbstractChange,
	#category : #'Moose-Changes'
}

{ #category : #'as yet unclassified' }
MCAdd class >> changeFor [
	^ #(Simple Composite Link)
]
