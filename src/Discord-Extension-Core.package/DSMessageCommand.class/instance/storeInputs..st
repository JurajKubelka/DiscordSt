private
storeInputs: aDynamicComposableModel 
	self channel: aDynamicComposableModel channelList selectedItem.
	self text: aDynamicComposableModel messageText text asString.
	self fileName: aDynamicComposableModel attachmentInput text asString.
	