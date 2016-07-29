Extension { #name : #FAMIXEnum }

{ #category : #'*Moose-Changes' }
FAMIXEnum >> changeType [
	self flag: #notSure.
	^ 'class'
]

{ #category : #'*Moose-Changes' }
FAMIXEnum >> shouldBeConsideredAsChange [
	^ true
]
