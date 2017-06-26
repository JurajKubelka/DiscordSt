tests
testSend
	command := self newCommand.
	command 
		client: self newClient;
		text: self anyString;
		fileName: self anyStringTwo;
		channel: (DSGuildTextChannel new id: self bigNumber; guildId: self bigNumber; yourself).
	self should: [ command send ] raise: DSTokenRequiredError