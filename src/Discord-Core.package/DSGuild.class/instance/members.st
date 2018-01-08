accessing
members
	^ members ifNil: [ members := self restApi membersOfGuild: self ]