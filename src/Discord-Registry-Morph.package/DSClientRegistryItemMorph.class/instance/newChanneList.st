instance creation
newChanneList
	^ (MorphDropListMorph
			on: self
			list: #channels
			selected: #selectedChannel
			changeSelected: #selectedChannel:
			useIndex: false)
				hResizing: #spaceFill;
				vResizing: #shrinkWrap;
				yourself.