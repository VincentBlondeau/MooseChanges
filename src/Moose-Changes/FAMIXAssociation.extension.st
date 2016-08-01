Extension { #name : #FAMIXAssociation }

{ #category : #'*Moose-Changes' }
FAMIXAssociation classSide >> changeAnnotation [
	<MCType: #Link source: #from target: #to>

]

{ #category : #'*Moose-Changes' }
FAMIXAssociation >> selectedTests [
	^ self from selectedTests
]
