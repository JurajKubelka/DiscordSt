updating
updateAuthorLogo
	| logoBackground logoElement iconExtent |
	iconExtent := DSIcons discord extent.
	logoBackground := BlBackground builder
		image: DSIcons discord;
		build.
	logoElement := BlElement new
		size: iconExtent;
		geometry: (BlEllipse extent: iconExtent);
		background: logoBackground;
		yourself.
	self addChild: logoElement