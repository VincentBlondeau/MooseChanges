Extension { #name : #FAMIXBehaviouralEntity }

{ #category : #'*Moose-Changes' }
FAMIXBehaviouralEntity classSide >> changeAnnotation [
	<MCType: #Simple>
]

{ #category : #'*Moose-Changes' }
FAMIXBehaviouralEntity >> changeType [
		^ 'method'
]

{ #category : #'*Moose-Changes' }
FAMIXBehaviouralEntity >> shouldBeConsideredAsChange [
	^ true
]
