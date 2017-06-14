tests
testSend
	command := self newSendCommand.
	command 
		client: self newClient;
		message: self anyString;
		fileName: self anyStringTwo;
		object: 42;
		channel: (DSGuildTextChannel new id: self anyString; yourself).
	self should: [ command send ] raise: DSTokenRequiredError