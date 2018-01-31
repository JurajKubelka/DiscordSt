actions
send
	self initializeMessageBuilder.
	self items do: [ :eachItem | eachItem accept: self ].
	messageBuilder isPostValid ifTrue: [ 
		messages add: messageBuilder send ].
	self associateAttachmentsAndTypes.
	self addShareLinkInformation.
	^ messages.