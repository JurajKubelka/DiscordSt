event handling
displayFormContextMenu: aMouseButtonEvent 
	| menu |
	menu := CmdContextMenuCommandActivation 
		buildMenuFor: self image 
		inContext: ((DSAnimatedGifFormContext for: self) preview: self image; yourself).
	menu popUpInWorld.