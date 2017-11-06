instance creation
newAuthorLogoElement
	| logoBackground iconExtent |
	iconExtent := DSIcons discord extent.
	logoBackground := BlBackground builder
		image: DSIcons discord;
		build.
	^ BlElement new
		size: iconExtent;
		geometry: (BlEllipse extent: iconExtent);
		background: logoBackground;
		yourself.