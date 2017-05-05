tests
testOwnerTrue
	guild := self newUserGuild.
	guild owner: true.
	self assert: guild isOwner