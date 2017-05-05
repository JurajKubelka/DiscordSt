tests
testPrintStringOwner
	guild := self newUserGuild.
	guild name: 'Server name'.
	guild owner: true.
	self assert: guild printString equals: 'User Guild: Server name (owner)'