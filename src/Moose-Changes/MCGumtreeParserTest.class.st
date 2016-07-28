Class {
	#name : #MCGumtreeParserTest,
	#superclass : #PPCompositeParserTest,
	#category : #'Moose-Changes-Tests-Importer'
}

{ #category : #accessing }
MCGumtreeParserTest >> parserClass [
	^ MCGumtreeParser
]

{ #category : #tests }
MCGumtreeParserTest >> testParseAll [
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

{ #category : #tests }
MCGumtreeParserTest >> testParseChanges [
	self parse: '[
  {
    "type": "Insert",
    "astType": "ExpressionStatement",
    "qualifiedParentName": "com.awl.acq.bcmc.contract.xmlgenerator.generators;DPCTTerminalGenerator;generateDPCTTerminalForCT(OkcKLinesV,CsiItemInstance)"
  }
]' rule: #changes
]

{ #category : #tests }
MCGumtreeParserTest >> testParseFileChange [
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

{ #category : #tests }
MCGumtreeParserTest >> testParseFileName [
	self parse: 'genericXML-generator/src/main/java/com/awl/acq/bcmc/contract/xmlgenerator/generators/DPCTTerminalGenerator.java' rule: #fileName
]
