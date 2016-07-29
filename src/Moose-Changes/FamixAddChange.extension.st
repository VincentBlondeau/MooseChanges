Extension { #name : #FamixAddChange }

{ #category : #'*Moose-Changes' }
FamixAddChange >> accept: aVisitor [
	^ aVisitor visitAddChange: self
]
