accessing
computedHeightFrom: aRectangle
	self exceedsMessageLenghtLimit ifFalse: [ ^ 0 ].
	^ rowMorph ifNil: [0] ifNotNil: [rowMorph height]