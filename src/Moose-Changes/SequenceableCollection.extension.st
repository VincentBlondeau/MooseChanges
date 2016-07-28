Extension { #name : #SequenceableCollection }

{ #category : #'*Moose-Changes' }
SequenceableCollection >> at: anIndex ifPresent: aBlockClosure [
	^ anIndex <= self size
		ifTrue: [ aBlockClosure cull: (self at: anIndex) ]
]
