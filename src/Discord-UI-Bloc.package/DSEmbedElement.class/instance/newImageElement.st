instance creation
newImageElement
	| imageForm imageBackground |
	imageForm := self embed image asForm.
	imageBackground := BlBackground builder
		image: imageForm;
		build.
	^ BlElement new
		size: imageForm extent;
		geometry: (BlRectangle extent: imageForm extent);
		background: imageBackground;
		margin: (BlInsets all: 5);
		yourself