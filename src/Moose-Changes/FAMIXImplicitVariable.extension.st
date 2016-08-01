Extension { #name : #FAMIXImplicitVariable }

{ #category : #'*Moose-Changes' }
FAMIXImplicitVariable >> changeType [
	^ 'methodBody'
]

{ #category : #'*Moose-Changes' }
FAMIXImplicitVariable >> shouldBeConsideredAsChange [
	^ true
]
