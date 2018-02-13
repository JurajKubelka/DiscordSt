json example - payload
jsonChannelUpdatePayload
	^ '{"op":0,"d":', self coreModelJsonMapping jsonChannelGuildText, ',"s":6,"t":"CHANNEL_UPDATE"}'