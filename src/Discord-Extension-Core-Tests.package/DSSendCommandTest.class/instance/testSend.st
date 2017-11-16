tests
testSend
	command := self newObjectToTest.
	command 
		client: self newClient;
		description: self anyString;
		fileName: self anyStringTwo;
		channel: (DSGuildTextChannel new id: self bigNumber; guildId: self bigNumber; yourself).
	command contentDeliveryChannel: command channel.
	self should: [ command send ] raise: DSTokenRequiredError