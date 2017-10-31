instance creation
newImageElement
	| imageElement |
	"imageForm := self embed image asForm."
	imageElement := BlElement new
		size: self embed image extent;
		geometry: (BlRectangle extent: self embed image extent);
		margin: (BlInsets all: 5);
		yourself.
	self embed image hasData 
		ifTrue: [ self setImageBackground: imageElement ]
		ifFalse: [ self setTemporalBackground: imageElement ].
	^ imageElement