private
storeInputs: aDynamicComposableModel 
	self channel: aDynamicComposableModel channelList selectedItem.
	self guild: aDynamicComposableModel serverList selectedItem.
	self text: aDynamicComposableModel messageText text asString.
	