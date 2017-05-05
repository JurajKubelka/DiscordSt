tests
testMeGuilds
	| guilds |
	self skipIfNotAuthenticated.
	guilds := self client meGuilds.
	self assert: guilds notNil.
	self assert: guilds isCollection.
	self assert: guilds size equals: 1.
	self assert: guilds first class equals: DSUserGuild.