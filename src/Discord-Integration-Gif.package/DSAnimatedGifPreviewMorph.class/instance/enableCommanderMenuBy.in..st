menu
enableCommanderMenuBy: aDSAnimatedGifContext in: anMorph 
	anMorph eventHandler: MorphicEventHandler new.
	anMorph eventHandler 
		on: #click send: #displayFormContextMenu: to: self.