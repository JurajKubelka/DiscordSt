tests
testOwnerFalse
	guild := self newUserGuild.
	guild owner: false.
	self deny: guild isOwner