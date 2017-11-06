private
setTemporalBackground: imageElement
	| imageBackground |
	imageBackground := BlBackground builder
		paint: (Color gray alpha: 0.5);
		build.
	imageElement background: imageBackground.
	DSForkedCommand new
		image: self embed image;
		onSuccess: [ 
			imageBackground := BlBackground builder
				image: self embed image asForm;
				build.
			imageElement background: imageBackground ];
		execute.
