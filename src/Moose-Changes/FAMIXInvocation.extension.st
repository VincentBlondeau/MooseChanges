Extension { #name : #FAMIXInvocation }

{ #category : #'*Moose-Changes' }
FAMIXInvocation >> changeType [
	^ 'methodBody'
]

{ #category : #'*Moose-Changes' }
FAMIXInvocation >> shouldBeConsideredAsChange [
	^ true
]
