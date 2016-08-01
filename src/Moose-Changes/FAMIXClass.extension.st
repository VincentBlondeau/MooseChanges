Extension { #name : #FAMIXClass }

{ #category : #'*Moose-Changes' }
FAMIXClass >> changeType [
	^ 'class'
]

{ #category : #'*Moose-Changes' }
FAMIXClass >> selectedTests [
	^ self methods flatCollect: #selectedTests
]

{ #category : #'*Moose-Changes' }
FAMIXClass >> shouldBeConsideredAsChange [
	^ true
]
