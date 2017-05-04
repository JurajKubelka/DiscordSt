tests
testPermissions
	guild := self newUserGuild.
	guild permissions: 12345.
	self assert: guild permissions equals: 12345.