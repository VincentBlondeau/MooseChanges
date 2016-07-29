Extension { #name : #FM3MetaDescription }

{ #category : #'*Moose-Changes' }
FM3MetaDescription >> classForChange: aString [
	^ self allSubclasses
		detect: [ :class | (class implementingClass new perform: (class attributeNamed: #changeForList) implementingSelector) = aString ]
]

{ #category : #'*Moose-Changes' }
FM3MetaDescription >> isClassForChange: aString [
	^ (self implementingClass new
		perform: (self attributeNamed: #changeForList) implementingSelector)
		= aString
]
