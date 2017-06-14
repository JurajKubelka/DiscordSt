tests
testServers
	command := self newSendCommand.
	command client: self newClient.
	self should: [ command servers ] raise: DSTokenRequiredError