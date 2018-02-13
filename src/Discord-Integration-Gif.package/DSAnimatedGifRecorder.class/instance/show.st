actions
show
	^ DSAnimatedGifPreviewMorph new
		extent: 500@400;
		reader: self gifReader;
		openInWindow 