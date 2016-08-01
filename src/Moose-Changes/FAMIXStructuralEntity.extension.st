Extension { #name : #FAMIXStructuralEntity }

{ #category : #'*Moose-Changes' }
FAMIXStructuralEntity >> selectedTests [
	^ self belongsTo selectedTests
]
