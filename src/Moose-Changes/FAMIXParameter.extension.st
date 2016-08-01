Extension { #name : #FAMIXParameter }

{ #category : #'*Moose-Changes' }
FAMIXParameter >> changeType [
	^ 'methodBody'
]

{ #category : #'*Moose-Changes' }
FAMIXParameter >> selectedTests [
	^ self belongsTo selectedTests
]

{ #category : #'*Moose-Changes' }
FAMIXParameter >> shouldBeConsideredAsChange [
	^ true
]
