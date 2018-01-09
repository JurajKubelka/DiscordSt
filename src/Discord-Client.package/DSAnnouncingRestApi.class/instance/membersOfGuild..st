public - guild
membersOfGuild: aDSGuild 
	<return: #DSMembers of: #DSMember>
	^ self catchDiscordErrorDuring: [ | members |
		members := self restApi membersOfGuild: aDSGuild.
		members do: [ :eachMember | eachMember user restApi: self ].
		self announce: (DSMembersAnnouncement new
			guild: aDSGuild;
			members: members; 
			yourself).
		members ]