json example - event
jsonReadyEvent
	^ '{"v":6,"user":', self jsonUser, ',"private_channels":[],"guilds":', self jsonCollectionOfGuildsOne, 
	',"session_id":21,"_trace":["discord-gateway-prd-1-16","discord-sessions-prd-1-2"]}'