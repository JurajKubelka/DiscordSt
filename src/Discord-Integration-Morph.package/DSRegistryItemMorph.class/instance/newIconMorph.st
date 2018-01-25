instance creation
newIconMorph
	<return: #ImageMorph>
	^ #empty asIcon asMorph
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			yourself