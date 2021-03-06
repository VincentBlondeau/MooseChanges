Class {
	#name : #MCGumtreeImporterTest,
	#superclass : #MCGumtreeParserTest,
	#category : #'Moose-Changes-Tests-Importer'
}

{ #category : #accessing }
MCGumtreeImporterTest >> parserClass [
	^ MCGumtreeImporter
]

{ #category : #accessing }
MCGumtreeImporterTest >> testParseAll [
	| firstValue secondValue |
	self
		parse:
			'
genericXML-generator/src/main/java/com/awl/acq/bcmc/contract/xmlgenerator/generators/DPCTTerminalGenerator.java
[
  {
    "type": "Insert",
    "astType": "ExpressionStatement",
    "qualifiedParentName": "com.awl.acq.bcmc.contract.xmlgenerator.generators;DPCTTerminalGenerator;generateDPCTTerminalForCT(OkcKLinesV,CsiItemInstance)"
  }
]
genericXML-generator/src/test/java/com/awl/acq/bcmc/contract/xmlgenerator/generators/DPCTTerminalGeneratorTest.java
[
  {
    "type": "Insert",
    "astType": "MethodDeclaration",
    "qualifiedParentName": "com.awl.acq.bcmc.contract.xmlgenerator.generators;DPCTTerminalGeneratorTest;shouldHaveExpectedOnholdStatus()"
  },
  {
    "type": "Insert",
    "astType": "MarkerAnnotation",
    "qualifiedParentName": "com.awl.acq.bcmc.contract.xmlgenerator.generators;DPCTTerminalGeneratorTest;shouldHaveExpectedOnholdStatus();@Test"
  },
  {
    "type": "Insert",
    "astType": "VariableDeclarationFragment",
    "qualifiedParentName": "com.awl.acq.bcmc.contract.xmlgenerator.generators;DPCTTerminalGeneratorTest.attribute11"
  },
  {
    "type": "Insert",
    "astType": "VariableDeclarationFragment",
    "qualifiedParentName": "com.awl.acq.bcmc.contract.xmlgenerator.generators;DPCTTerminalGeneratorTest.okcKLinesV"
  },
  {
    "type": "Insert",
    "astType": "VariableDeclarationFragment",
    "qualifiedParentName": "com.awl.acq.bcmc.contract.xmlgenerator.generators;DPCTTerminalGeneratorTest.csiItemInstance"
  },
  {
    "type": "Insert",
    "astType": "VariableDeclarationFragment",
    "qualifiedParentName": "com.awl.acq.bcmc.contract.xmlgenerator.generators;DPCTTerminalGeneratorTest.ctTerminal"
  }
]'.
	self assert: result size equals: 2.
	firstValue := result at: 'genericXML-generator/src/main/java/com/awl/acq/bcmc/contract/xmlgenerator/generators/DPCTTerminalGenerator.java'.
	secondValue := result at: 'genericXML-generator/src/test/java/com/awl/acq/bcmc/contract/xmlgenerator/generators/DPCTTerminalGeneratorTest.java'.
	self assert: firstValue size equals: 1.
	self assert: secondValue size equals: 6.
	
	
]

{ #category : #accessing }
MCGumtreeImporterTest >> testParseChange [
	self
		parse:
			'[
  {
    "type": "Insert",
    "astType": "ExpressionStatement",
    "qualifiedParentName": "com.awl.acq.bcmc.contract.xmlgenerator.generators;DPCTTerminalGenerator;generateDPCTTerminalForCT(OkcKLinesV,CsiItemInstance)"
  }
]'
		rule: #changes.
	self assert: result size equals: 1.
	self assert: (result first at: #type) equals: 'Insert'.
	self assert: (result first at: #astType) equals: 'ExpressionStatement'.
	self
		assert: (result first at: #qualifiedParentName)
		equals:
			'com.awl.acq.bcmc.contract.xmlgenerator.generators;DPCTTerminalGenerator;generateDPCTTerminalForCT(OkcKLinesV,CsiItemInstance)'
]
