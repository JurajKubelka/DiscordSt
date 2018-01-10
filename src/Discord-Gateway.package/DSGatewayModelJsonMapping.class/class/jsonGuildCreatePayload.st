json example - payload
jsonGuildCreatePayload
	^ '{"op":0,"d":', self coreModelJsonMapping jsonGuild, ',"s":4,"t":"GUILD_CREATE"}'