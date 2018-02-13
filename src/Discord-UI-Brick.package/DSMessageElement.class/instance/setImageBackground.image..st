private
setImageBackground: imageElement image: aDSAttachment 
	| imageBackground |
	imageBackground := BlBackground builder
		image: aDSAttachment asForm;
		build.
	imageElement background: imageBackground
