accessing
members
	^ members ifNil: [ members := self restApi listGuildMembersOfGuildId: self id ]