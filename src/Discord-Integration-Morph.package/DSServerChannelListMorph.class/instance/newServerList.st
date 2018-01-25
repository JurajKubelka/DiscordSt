instance creation
newServerList
	^ (DropListMorph
			on: self
			list: #servers
			selected: #selectedServer
			changeSelected: #selectedServer:
			useIndex: false)
				wrapSelector: #name;
				hResizing: #spaceFill;
				vResizing: #shrinkWrap;
				yourself.