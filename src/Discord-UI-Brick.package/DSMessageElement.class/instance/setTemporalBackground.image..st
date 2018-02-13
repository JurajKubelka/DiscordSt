private
setTemporalBackground: imageElement image: aDSAttachment
	| imageBackground |
	imageBackground := BlBackground builder
		paint: (Color gray alpha: 0.5);
		build.
	imageElement background: imageBackground.
	DSAsyncCommand new
		image: aDSAttachment;
		onSuccess: [ 
			imageBackground := BlBackground builder
				image: aDSAttachment asForm;
				build.
			imageElement background: imageBackground ];
		execute.
