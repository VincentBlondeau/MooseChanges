Class {
	#name : #MCAddInitializer,
	#superclass : #MCAdd,
	#category : #'Moose-Changes-Model'
}

{ #category : #'as yet unclassified' }
MCAddInitializer class >> annotation [
	<MSEClass: #AddInitializer super: #MCAdd>
	<package: #MooseChange>

]

{ #category : #accessing }
MCAddInitializer >> changeForList [
	^ 'initializer'
]
