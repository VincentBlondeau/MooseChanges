Extension { #name : #FAMIXLocalVariable }

{ #category : #'*Moose-Changes' }
FAMIXLocalVariable >> changeType [
	^'methodBody'
]

{ #category : #'*Moose-Changes' }
FAMIXLocalVariable >> selectedTests [
	^ self belongsTo selectedTests
]

{ #category : #'*Moose-Changes' }
FAMIXLocalVariable >> shouldBeConsideredAsChange [
	^true
]
