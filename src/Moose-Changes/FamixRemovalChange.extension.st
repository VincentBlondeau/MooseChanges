Extension { #name : #FamixRemovalChange }

{ #category : #'*Moose-Changes' }
FamixRemovalChange >> accept: aVisitor [
	^ aVisitor visitRemovalChange: self
]
