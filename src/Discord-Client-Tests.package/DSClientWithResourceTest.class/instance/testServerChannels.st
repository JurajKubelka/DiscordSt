tests
testServerChannels
	| guilds channels |
	self skipIfNotAuthenticated.
	guilds := self client servers.
	self assert: guilds size equals: 1.
	channels := guilds first channels.
	self assert: channels notNil.
	self assert: channels isCollection.
	self assert: channels size > 1.
	self assert: channels first class equals: DSGuildTextChannel.