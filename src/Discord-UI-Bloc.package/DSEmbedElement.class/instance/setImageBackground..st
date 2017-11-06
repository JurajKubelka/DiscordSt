private
setImageBackground: imageElement
	| imageBackground |
	imageBackground := BlBackground builder
		image: self embed image asForm;
		build.
	imageElement background: imageBackground
