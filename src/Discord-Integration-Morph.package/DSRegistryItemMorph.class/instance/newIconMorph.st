instance creation
newIconMorph
	<return: #ImageMorph>
	^ (self iconNamed: #empty) asMorph
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		yourself