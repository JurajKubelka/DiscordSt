instance creation
newImageElementFor: aDSAttachment 
	| imageElement |
	"imageForm := self embed image asForm."
	imageElement := BlElement new
		size: aDSAttachment extent;
		geometry: (BlRectangle extent: aDSAttachment extent);
		margin: (BlInsets all: 5);
		yourself.
	aDSAttachment hasData 
		ifTrue: [ self setImageBackground: imageElement image: aDSAttachment ]
		ifFalse: [ self setTemporalBackground: imageElement image: aDSAttachment ].
	^ imageElement