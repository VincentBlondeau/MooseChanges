Extension { #name : #FAMIXBehaviouralEntity }

{ #category : #'*Moose-Changes' }
FAMIXBehaviouralEntity classSide >> changeAnnotation [
	<MCType: #Simple>
]

{ #category : #'*Moose-Changes' }
FAMIXBehaviouralEntity >> changeType [
	self isFieldInitializer
		ifTrue: [ ^ 'fieldInitializer' ].
	self isConstructor
		ifTrue: [ ^ 'initializer' ].
	^ 'method'
]

{ #category : #'*Moose-Changes' }
FAMIXBehaviouralEntity >> isFieldInitializer [
	<MSEProperty: #isFieldInitializer type: #Boolean>
	<derived>
	<MSEComment: 'Is the method regrouping all the fields initializers of a class'>
	^ self name = '<Initializer>'
]

{ #category : #'*Moose-Changes' }
FAMIXBehaviouralEntity >> shouldBeConsideredAsChange [
	^ true
]
