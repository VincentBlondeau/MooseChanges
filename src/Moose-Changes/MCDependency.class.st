Class {
	#name : #MCDependency,
	#superclass : #FAMIXAssociation,
	#instVars : [
		'source',
		'target'
	],
	#category : #'Moose-Changes-Model'
}

{ #category : #'class initialization' }
MCDependency class >> change: aChangeAfter dependsOn: aChangeBefore [
	^ self new
		from: aChangeAfter;
		to: aChangeBefore;
		yourself
]

{ #category : #'class initialisation' }
MCDependency class >> createChangesDependenciesFromDict: aCollectionOfAssociations [
	^ aCollectionOfAssociations
		collect: [ :assoc | self change: assoc key dependsOn: assoc value ]
]

{ #category : #'as yet unclassified' }
MCDependency >> from [
	<MSEProperty: #source type: #MCAbstractChange opposite: #outgoingDependencies>
	<MSEComment: 'C1 requires C2. from is C1'>
	^ self source. 
]

{ #category : #'as yet unclassified' }
MCDependency >> from: aSource [
	self source: aSource . 
]

{ #category : #'as yet unclassified' }
MCDependency >> source [
	<MSEProperty: #source type: #MCAbstractChange opposite: #outgoingDependencies>
	<MSEComment: 'C1 requires C2. from is C1'>
	^ source
]

{ #category : #'as yet unclassified' }
MCDependency >> source: anotherChange [
	source := FMMultivalueLink on: self
					update: #outgoingDependencies
					from: self source
					to: anotherChange
]

{ #category : #'as yet unclassified' }
MCDependency >> target [
	<MSEProperty: #target type: #MCAbstractChange opposite: #incomingDependencies>
	<MSEComment: 'C1 requires C2. to is C2'>
	^ target
]

{ #category : #'as yet unclassified' }
MCDependency >> target: anotherChange [
	target := FMMultivalueLink on: self
					update: #incomingDependencies
					from: self target
					to: anotherChange
]

{ #category : #'as yet unclassified' }
MCDependency >> to [
	<MSEProperty: #to type: #MCAbstractChange opposite: #incomingDependencies>
	<MSEComment: 'C1 requires C2. to is C2'>
	^ self target 
]

{ #category : #'as yet unclassified' }
MCDependency >> to: aSource [
	self target: aSource . 
]
