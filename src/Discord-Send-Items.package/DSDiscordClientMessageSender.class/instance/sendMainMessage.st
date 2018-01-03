private
sendMainMessage
	messageBuilder := self registry client message.
	messageBuilder channel: self registry selectedChannel.
	self items do: [ :eachItem | eachItem accept: self ].
	messageBuilder send.