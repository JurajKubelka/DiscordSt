event handling
showPreview	
	"Pop up a balloon containing the given preview,
	first removing any existing BalloonMorphs in the world."
	| vertices aWorld aHand worldBounds preview |
	(aWorld := self world) ifNil: [^self].
	aHand := aWorld activeHand.
	preview := ImagePreviewMorph new
		image: self form size: 150@150;
		yourself.
	preview fullBounds.
	vertices := SimpleBalloonMorph getVertices: preview bounds.
	vertices := SimpleBalloonMorph
				getBestLocation: vertices
				for: self
				corner: #topLeft.
	preview position: vertices first.
	preview lock.
	preview setProperty: #morphicLayerNumber toValue: preview morphicLayerNumber.
	aHand world addMorphFront: preview.
	((worldBounds := aHand world bounds) containsRect: preview bounds) ifFalse:
		[preview bounds: (preview bounds translatedToBeWithin: worldBounds)].
	aHand balloonHelp: preview.