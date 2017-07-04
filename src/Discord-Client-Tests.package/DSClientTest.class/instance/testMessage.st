tests
testMessage
	| builder |
	client := self newClient.
	builder := client message.
	self assert: builder client == client.
	self assert: builder class equals: DSClientPostBuilder.