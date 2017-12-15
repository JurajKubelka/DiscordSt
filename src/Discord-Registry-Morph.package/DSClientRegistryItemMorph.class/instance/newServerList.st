instance creation
newServerList
	^ (MorphDropListMorph
			on: self
			list: #servers
			selected: #selectedServer
			changeSelected: #selectedServer:
			useIndex: false)
				hResizing: #spaceFill;
				vResizing: #shrinkWrap;
				yourself.