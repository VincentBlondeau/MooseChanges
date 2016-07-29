Class {
	#name : #MCChangeMapperTest,
	#superclass : #TestCase,
	#instVars : [
		'data',
		'result'
	],
	#category : #'Moose-Changes-Tests-Importer'
}

{ #category : #'as yet unclassified' }
MCChangeMapperTest >> initializeDicoFrom: aCollection [
	^ data := Dictionary new
		at: #type put: aCollection first asString;
		at: #astType put: aCollection second asString;
		at: #qualifiedParentName put: aCollection third asString;
		yourself
]

{ #category : #'as yet unclassified' }
MCChangeMapperTest >> mapperClass [
	^ MCGumtreeChangeMapper
]

{ #category : #'as yet unclassified' }
MCChangeMapperTest >> result [
	^ result := self mapperClass new createChangeFrom: data
]

{ #category : #'as yet unclassified' }
MCChangeMapperTest >> testMappingMethodDeclarationInsert [
	self initializeDicoFrom: #(Insert MethodDeclaration  'com.awl.acq.bcmc.contract.xmlgenerator.generators;DPCTTerminalGeneratorTest;shouldHaveExpectedOnholdStatus()'). 
	self assert: (self result isKindOf: MCAddEmptyMethod).
]

{ #category : #'as yet unclassified' }
MCChangeMapperTest >> testParseQualifiedName [
	result := self mapperClass new
		parseQualifiedName:
			'com.awl.acq.bcmc.contract.xmlgenerator.generators;DPCTTerminalGeneratorTest;shouldHaveExpectedOnholdStatus()'.
	self
		assert: (result at: #package)
		equals: 'com::awl::acq::bcmc::contract::xmlgenerator::generators'.
	self assert: (result at: #class) equals: 'DPCTTerminalGeneratorTest'.
	self assert: (result at: #method) equals: 'shouldHaveExpectedOnholdStatus()'.
	self should: [ result at: #attribute ] raise: KeyNotFound
]

{ #category : #'as yet unclassified' }
MCChangeMapperTest >> testParseQualifiedNameAnnotation [
	result := self mapperClass new
		parseQualifiedName: 'com.awl.si.iss.bo.cams.facade.route;CamsFacadeWsRoute;wrapValidationException(Throwable);@Property'.
	self assert: (result at: #package) equals: 'com::awl::si::iss::bo::cams::facade::route'.
	self assert: (result at: #class) equals: 'CamsFacadeWsRoute'.
	self assert: (result at: #method) equals: 'wrapValidationException(Throwable)'.
	self assert: (result at: #annotation) equals: '@Property'.
	self should: [ result at: #field ] raise: KeyNotFound.

]

{ #category : #'as yet unclassified' }
MCChangeMapperTest >> testParseQualifiedNameClass [
	result := self mapperClass new
		parseQualifiedName:
			'com.awl.acq.bcmc.contract.xmlgenerator.generators;DPCTTerminalGeneratorTest'.
	self
		assert: (result at: #package)
		equals: 'com::awl::acq::bcmc::contract::xmlgenerator::generators'.
	self assert: (result at: #class) equals: 'DPCTTerminalGeneratorTest'.
	self should: [ result at: #method ] raise: KeyNotFound.
	self should: [ result at: #attribute ] raise: KeyNotFound
]

{ #category : #'as yet unclassified' }
MCChangeMapperTest >> testParseQualifiedNameField [
	result := self mapperClass new parseQualifiedName: 'com.awl.si.iss.bo.cams.facade.route;CamsFacadeWsRouteTest.headers'.
	self assert: (result at: #package) equals: 'com::awl::si::iss::bo::cams::facade::route'.
	self assert: (result at: #class) equals: 'CamsFacadeWsRouteTest'.
	self assert: (result at: #field) equals: 'headers'.
	self should: [ result at: #method ] raise: KeyNotFound
]

{ #category : #'as yet unclassified' }
MCChangeMapperTest >> testParseQualifiedNameMethod [
	result := self mapperClass new
		parseQualifiedName:
			'com.awl.acq.bcmc.contract.xmlgenerator.generators;DPCTTerminalGeneratorTest;shouldHaveExpectedOnholdStatus()'.
	self
		assert: (result at: #package)
		equals: 'com::awl::acq::bcmc::contract::xmlgenerator::generators'.
	self assert: (result at: #class) equals: 'DPCTTerminalGeneratorTest'.
	self assert: (result at: #method) equals: 'shouldHaveExpectedOnholdStatus()'.
	self should: [ result at: #attribute ] raise: KeyNotFound
]

{ #category : #'as yet unclassified' }
MCChangeMapperTest >> testParseQualifiedNameMethod2 [
	result := self mapperClass new
		parseQualifiedName: 'com.awl.si.iss.bo.cams.facade.route;CamsFacadeWsRouteTest;validateExchange(Exchange,int,Class<? extends Throwable>,String)'.
	self assert: (result at: #package) equals: 'com::awl::si::iss::bo::cams::facade::route'.
	self assert: (result at: #class) equals: 'CamsFacadeWsRouteTest'.
	self assert: (result at: #method) equals: 'validateExchange(Exchange,int,Class<? extends Throwable>,String)'.
	self should: [ result at: #attribute ] raise: KeyNotFound
]
