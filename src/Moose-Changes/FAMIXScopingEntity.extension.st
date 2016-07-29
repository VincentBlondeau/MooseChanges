Extension { #name : #FAMIXScopingEntity }

{ #category : #'*Moose-Changes' }
FAMIXScopingEntity classSide >> changeAnnotation [
	<MCType: #Composite children: #childScopes>
]

{ #category : #'*Moose-Changes' }
FAMIXScopingEntity >> shouldBeConsideredAsChange [
	^ false
]
