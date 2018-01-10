json example - payload
jsonChannelDeletePayload
	^ '{"op":0,"d":', self coreModelJsonMapping jsonChannelGuildText, ',"s":6,"t":"CHANNEL_DELETE"}'