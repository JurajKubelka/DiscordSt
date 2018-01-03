actions
send
	self initializeMessageBuilder.
	self items do: [ :eachItem | eachItem accept: self ].
	messages add: messageBuilder send.
	self associateAttachmentsAndTypes.
	self addShareLinkInformation.
	^ messages.