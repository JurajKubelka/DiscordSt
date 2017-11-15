mapping - guild
voiceStateMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSVoiceState
		do: [ :mapping | 
			mapping mapAccessor: #guildId to: #guild_id.
			mapping mapAccessor: #channelId to: #channel_id.
			mapping mapAccessor: #userId to: #user_id.
			mapping mapAccessor: #sessionId to: #session_id.
			mapping mapAccessor: #deaf.
			mapping mapAccessor: #mute.
			mapping mapAccessor: #selfDeaf to: #self_deaf.
			mapping mapAccessor: #selfMute to: #self_mute.
			mapping mapAccessor: #suppress ]