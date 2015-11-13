Class {
	#name : #MCTest,
	#superclass : #TestCase,
	#instVars : [
		'model'
	],
	#category : #'Moose-Changes-Tests'
}

{ #category : #accessing }
MCTest class >> resources [
	^ {VerveineJTestResource}
]

{ #category : #'as yet unclassified' }
MCTest >> setUp [
	model := VerveineJTestResource current model copy
]

{ #category : #'as yet unclassified' }
MCTest >> testChangesAdd [
	| c1 c2 c3 dependencies |
	c1 := MCAddComponent addEntityTypedAs: FAMIXClass named: 'Client' container: 'ad_hoc'.
	c2 := MCAddComponent
		addEntityTypedAs: FAMIXMethod
		named: 'whoami()'
		container: 'ad_hoc::Client'.
	c3 := MCAddComponent
		addEntityTypedAs: FAMIXAttribute
		named: 'aNewAttribute'
		container: 'ad_hoc::Client'.
	model
		addAll:
			{c1.
			c2.
			c3}.
	dependencies := MCDependency
		createChangesDependenciesFromDict:
			{(c2 -> c1).
			(c3 -> c1)}.
	model addAll: dependencies.
	self assert: (model allWithType: MCAddComponent) size equals: 3.
	self assert: (model allWithType: MCDependency) size equals: 2
]

{ #category : #'as yet unclassified' }
MCTest >> testChangesDel [
	| c1 dependencies cm1 cm2 cm3 ca1 |
	c1 := MCDeleteComponent
		delEntityTypedAs: FAMIXClass
		named: 'OutputServer'
		container: 'moose::lan::server'.
	cm1 := MCDeleteComponent
		delEntityTypedAs: FAMIXMethod
		named: 'accept(Packet)'
		container: 'moose::lan::server::OutputServer'.
	cm2 := MCDeleteComponent
		delEntityTypedAs: FAMIXMethod
		named: 'canOutput()'
		container: 'moose::lan::server::OutputServer'.
	cm3 := MCDeleteComponent
		delEntityTypedAs: FAMIXMethod
		named: 'output(Packet)'
		container: 'moose::lan::server::OutputServer'.
	ca1 := MCDeleteComponent
		delEntityTypedAs: FAMIXAttribute
		named: 'serverType'
		container: 'moose::lan::server::OutputServer'.
	model
		addAll:
			{c1.
			cm1.
			cm2.
			cm3.
			ca1}.
	dependencies := MCDependency
		createChangesDependenciesFromDict:
			{(cm1 -> c1).
			(cm2 -> c1).
			(cm3 -> c1).
			(ca1 -> c1)}.
	model addAll: dependencies.
	self assert: (model allWithType: MCDeleteComponent) size equals: 5.
	self assert: (model allWithType: MCDependency) size equals: 4
]
