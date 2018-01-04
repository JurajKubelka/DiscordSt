instance creation
newDropListMorph
	^ (MorphDropListMorph
			on: self
			list: #morphItems
			selected: #selection
			changeSelected: #selection:
			useIndex: false)
				hResizing: #spaceFill;
				vResizing: #shrinkWrap;
				yourself.