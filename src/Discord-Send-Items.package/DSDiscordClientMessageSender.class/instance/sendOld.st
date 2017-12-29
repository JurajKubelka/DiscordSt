actions
sendOld
	messageBuilder := self registry client message.
	self items do: [ :eachItem | eachItem accept: self ].
	messageBuilder sendTo: self registry selectedChannel.