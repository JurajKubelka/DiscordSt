tests
testOwner
	guild := self newUserGuild.
	guild owner: true.
	self assert: guild owner