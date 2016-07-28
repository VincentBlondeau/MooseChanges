Extension { #name : #FM3MetaDescription }

{ #category : #'*Moose-Changes' }
FM3MetaDescription >> classForChange: aString [
	^ self allSubclasses
		detect: [ :class | (class implementingClass new perform: (class attributeNamed: #changeForList) implementingSelector) = aString ]
]
