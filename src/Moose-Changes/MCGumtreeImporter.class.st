Class {
	#name : #MCGumtreeImporter,
	#superclass : #PPCompositeParser,
	#instVars : [
		'filesChanges',
		'fileChange',
		'newLine',
		'fileName',
		'changes'
	],
	#category : #'Moose-Changes-Importer'
}

{ #category : #'as yet unclassified' }
MCGumtreeImporter >> changes [
	^ ']' asParser negate star flatten, ']' asParser
]

{ #category : #accessing }
MCGumtreeImporter >> fileChange [
	^ newLine , fileName , newLine , changes
]

{ #category : #'as yet unclassified' }
MCGumtreeImporter >> fileName [
	^ newLine asParser negate star flatten
]

{ #category : #accessing }
MCGumtreeImporter >> filesChanges [
	^ fileChange star
]

{ #category : #'as yet unclassified' }
MCGumtreeImporter >> newLine [
	^ String crlf asParser / #newline asParser
]

{ #category : #accessing }
MCGumtreeImporter >> start [
	^ filesChanges
]
