Class {
	#name : #MCGumtreeChangeMapper,
	#superclass : #MCAbstractChangeMapper,
	#category : #'Moose-Changes-Importer'
}

{ #category : #'as yet unclassified' }
MCGumtreeChangeMapper >> createChangeFrom: aDictionary [
	| changeType typeSuperClass changeEntity classMetaDescr splitName |
	changeType := self findTypeOfChange: (aDictionary at: #type).
	typeSuperClass := self modelSuperClass subclasses byName: changeType.
	changeEntity := self findElementOfChange: (aDictionary at: #astType).
	classMetaDescr := typeSuperClass classForChange: changeEntity.
	splitName := self parseQualifiedName: (aDictionary at: #qualifiedParentName).
	^ classMetaDescr implementingClass new
		name: splitName;
		yourself
]

{ #category : #'as yet unclassified' }
MCGumtreeChangeMapper >> findElementOfChange: aString [
	^ {('MethodDeclaration' -> 'method')} asDictionary at: aString ifAbsent: [ self shouldBeImplemented ]
]

{ #category : #'as yet unclassified' }
MCGumtreeChangeMapper >> findTypeOfChange: aString [ 
	^ { 'Insert' -> 'Add' } asDictionary at: aString ifAbsent: [ self shouldBeImplemented  ]
]

{ #category : #'as yet unclassified' }
MCGumtreeChangeMapper >> parseQualifiedName: aString [
	| splitString return classSubstrings |
	splitString := aString substrings: ';'.
	classSubstrings := splitString second substrings: '.'.
	return := Dictionary new
		at: #package put: (MooseUtilities moosify: splitString first);
		at: #class put: classSubstrings first;
		yourself.
	classSubstrings at: 2 ifPresent: [ :value | return at: #field put: value ].
	splitString at: 3 ifPresent: [ :value | return at: #method put: value ].
	splitString at: 4 ifPresent: [ :value | return at: #annotation put: value ].
	^ return
]
