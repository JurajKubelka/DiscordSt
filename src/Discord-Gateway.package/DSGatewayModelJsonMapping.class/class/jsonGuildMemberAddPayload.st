json example - payload
jsonGuildMemberAddPayload
	^ '{"op":0,"d":', self coreModelJsonMapping jsonGuildMember, ',"s":4,"t":"GUILD_MEMBER_ADD"}'