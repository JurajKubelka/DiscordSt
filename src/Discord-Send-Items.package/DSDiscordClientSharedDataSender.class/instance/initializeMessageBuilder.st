initialization
initializeMessageBuilder
	messageBuilder := self registry client message.
	messageBuilder channel: self registry selectedChannel.