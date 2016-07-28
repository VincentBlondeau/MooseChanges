Class {
	#name : #MCGumtreeParser,
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

{ #category : #accessing }
MCGumtreeParser >> changes [
	^ ']' asParser negate star flatten, ']' asParser
]

{ #category : #accessing }
MCGumtreeParser >> fileChange [
	^ newLine , fileName , newLine , changes
]

{ #category : #accessing }
MCGumtreeParser >> fileName [
	^ newLine asParser negate star flatten
]

{ #category : #accessing }
MCGumtreeParser >> filesChanges [
	^ fileChange star
]

{ #category : #accessing }
MCGumtreeParser >> newLine [
	^ String crlf asParser / #newline asParser
]

{ #category : #accessing }
MCGumtreeParser >> start [
	^ filesChanges
]
