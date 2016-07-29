Extension { #name : #FAMIXEntity }

{ #category : #'*Moose-Changes' }
FAMIXEntity classSide >> changeAnnotation [
	self subclassResponsibility 
]

{ #category : #'*Moose-Changes' }
FAMIXEntity >> changeType [
	^self subclassResponsibility 
]

{ #category : #'*Moose-Changes' }
FAMIXEntity >> shouldBeConsideredAsChange [
	^self subclassResponsibility 
]
