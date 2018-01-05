tests
testMessage
	| builder |
	client := self newClient.
	builder := client message.
	self assert: builder restApi == client restApi.
	self assert: builder class equals: DSClientPostBuilder.