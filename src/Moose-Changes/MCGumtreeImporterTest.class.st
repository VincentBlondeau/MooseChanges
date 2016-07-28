Class {
	#name : #MCGumtreeImporterTest,
	#superclass : #PPCompositeParserTest,
	#category : #'Moose-Changes-Tests-Importer'
}

{ #category : #'as yet unclassified' }
MCGumtreeImporterTest >> parserClass [
	^ MCGumtreeImporter
]

{ #category : #'as yet unclassified' }
MCGumtreeImporterTest >> testParseAll [
	self parse: '
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
]'
]

{ #category : #'as yet unclassified' }
MCGumtreeImporterTest >> testParseChanges [
	self parse: '[
  {
    "type": "Insert",
    "astType": "ExpressionStatement",
    "qualifiedParentName": "com.awl.acq.bcmc.contract.xmlgenerator.generators;DPCTTerminalGenerator;generateDPCTTerminalForCT(OkcKLinesV,CsiItemInstance)"
  }
]' rule: #changes
]

{ #category : #'as yet unclassified' }
MCGumtreeImporterTest >> testParseFileChange [
	self parse: '
genericXML-generator/src/main/java/com/awl/acq/bcmc/contract/xmlgenerator/generators/DPCTTerminalGenerator.java
[
  {
    "type": "Insert",
    "astType": "ExpressionStatement",
    "qualifiedParentName": "com.awl.acq.bcmc.contract.xmlgenerator.generators;DPCTTerminalGenerator;generateDPCTTerminalForCT(OkcKLinesV,CsiItemInstance)"
  }
]' rule: #fileChange
]

{ #category : #'as yet unclassified' }
MCGumtreeImporterTest >> testParseFileName [
	self parse: 'genericXML-generator/src/main/java/com/awl/acq/bcmc/contract/xmlgenerator/generators/DPCTTerminalGenerator.java' rule: #fileName
]
