tests
testGuildNamedNotExisting
	| guild |
	client := self newClient.
	guild := client guildNamed: 'Guild Name'.
	self assert: guild isNil.