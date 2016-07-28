Class {
	#name : #MCGumtreeImporter,
	#superclass : #MCGumtreeParser,
	#category : #'Moose-Changes-Importer'
}

{ #category : #accessing }
MCGumtreeImporter >> changes [
	
	^ super changes
		==> [ :node | | changesList |
			changesList := node first , node second.
			self jsonParser fromString: changesList ] 
]

{ #category : #accessing }
MCGumtreeImporter >> fileChange [
	^ super fileChange ==> [ :node | node second  -> node fourth ]
]

{ #category : #accessing }
MCGumtreeImporter >> filesChanges [
	^ super filesChanges ==> [ :node | node asDictionary ]
]

{ #category : #accessing }
MCGumtreeImporter >> jsonParser [
	^ NeoJSONReader
]
