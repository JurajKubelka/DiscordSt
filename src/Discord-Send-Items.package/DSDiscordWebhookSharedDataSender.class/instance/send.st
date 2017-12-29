actions
send
	messageBuilder := self newWebhookClient.
	messageBuilder setWaitForResponse.
	messageBuilder url: self registry url.
	self items do: [ :eachItem | eachItem accept: self ].
	messages add: messageBuilder send.
	self associateAttachmentsAndTypes.
	self addShareLinkInformation.
	^ messages.