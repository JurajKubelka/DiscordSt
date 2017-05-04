tests
testOwner2
	guild := self newUserGuild.
	guild owner: false.
	self deny: guild owner