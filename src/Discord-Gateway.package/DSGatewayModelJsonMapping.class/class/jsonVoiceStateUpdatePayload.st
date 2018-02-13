json example - payload
jsonVoiceStateUpdatePayload
	^ '{"op":0,"d":', self coreModelJsonMapping jsonVoiceState, ',"s":3,"t":"VOICE_STATE_UPDATE"}'