mapping - guild
guildMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSGuild
		do: [ :mapping | 
			mapping mapAccessor: #id.
			mapping mapAccessor: #name.
			mapping mapAccessor: #iconHash to: #icon.
			mapping mapAccessor: #splashHash to: #splash.
			mapping mapAccessor: #ownerId to: #owner_id.
			mapping mapAccessor: #region.
			mapping mapAccessor: #afkChannelId to: #afk_channel_id.
			(mapping mapAccessor: #afkTimeout to: #afk_timeout) valueSchema: #DurationInSeconds.
			mapping mapAccessor: #embedEnabled to: #embed_enabled.
			mapping mapAccessor: #embedChannelId to: #embed_channel_id.
			mapping mapAccessor: #verificationLevel to: #verification_level.
			mapping mapAccessor: #defaultMessageNotifications to: #default_message_notifications.
			mapping mapAccessor: #explicitContentFilter to: #explicit_content_filter.
			(mapping mapAccessor: #roles) valueSchema: #CollectionOfRoles.
			(mapping mapAccessor: #emojis) valueSchema: #CollectionOfEmojis.
			mapping mapAccessor: #features.
			mapping mapAccessor: #mfaLevel to: #mfa_level.
			mapping mapAccessor: #applicationId to: #application_id.
			mapping mapAccessor: #widgetEnabled to: #widget_enabled.
			mapping mapAccessor: #widgetChannelId to: #widget_channel_id.
			(mapping mapAccessor: #joinedAt to: #joined_at) valueSchema: DateAndTime.
			mapping mapAccessor: #large.
			mapping mapAccessor: #unavailable.
			mapping mapAccessor: #memberCount to: #member_count.
			(mapping mapAccessor: #voiceStates to: #voice_states) valueSchema: #CollectionOfVoiceStates.
			(mapping mapAccessor: #members) valueSchema: #CollectionOfGuildMembers.
			(mapping mapAccessor: #channels) valueSchema: #CollectionOfSortedChannels.
			(mapping mapAccessor: #presences) valueSchema: #CollectionOfPresenceUpdates ].
	self 
		durationInSecondsMappingFor: aNeoJSONMapper;
		collectionOfRolesMappingFor: aNeoJSONMapper;
		collectionOfEmojisMappingFor: aNeoJSONMapper;
		dateAndTimeMappingFor: aNeoJSONMapper;
		collectionOfVoiceStatesMappingFor: aNeoJSONMapper;
		collectionOfGuildMembersMappingFor: aNeoJSONMapper;
		collectionOfSortedChannelsMappingFor: aNeoJSONMapper;
		collectionOfPresenceUpdatesMappingFor: aNeoJSONMapper.