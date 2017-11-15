tests
testPermissionOverwrites
	channel := self newChannel.
	channel permissionOverwrites: #().
	self assert: channel permissionOverwrites equals: #().