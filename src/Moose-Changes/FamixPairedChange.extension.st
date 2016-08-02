Extension { #name : #FamixPairedChange }

{ #category : #'*Moose-Changes' }
FamixPairedChange >> accept: aVisitor [
	^ aVisitor visitPairedChange: self
]
