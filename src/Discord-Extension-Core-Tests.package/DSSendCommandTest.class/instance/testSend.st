tests
testSend
	command := self newObject.
	command 
		client: self newClient;
		description: self anyString;
		fileName: self anyStringTwo;
		channel: (DSTextChannel new id: self bigNumber; guildId: self bigNumber; yourself).
	command contentDeliveryChannel: command channel.
	self should: [ command send ] raise: DSTokenRequiredError