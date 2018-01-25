instance creation
newChannelList
	^ (DropListMorph
			on: self
			list: #channels
			selected: #selectedChannel
			changeSelected: #selectedChannel:
			useIndex: false)
				wrapSelector: #name;
				hResizing: #spaceFill;
				vResizing: #shrinkWrap;
				yourself.