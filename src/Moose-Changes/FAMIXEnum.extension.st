Extension { #name : #FAMIXEnum }

{ #category : #'*Moose-Changes' }
FAMIXEnum >> changeType [
	self flag: #notSure.
	^ 'class'
]

{ #category : #'*Moose-Changes' }
FAMIXEnum >> selectedTests [
	^( (self queryAllIncoming collect: #from as: OrderedCollection) select: #isMethod thenCollect: #selectedTests) flatten
]

{ #category : #'*Moose-Changes' }
FAMIXEnum >> shouldBeConsideredAsChange [
	^ true
]
