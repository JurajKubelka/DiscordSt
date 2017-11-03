mapping - message
userMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSUser do: [ :mapping |
	      mapping mapAccessor: #id.
	      mapping mapAccessor: #username.
	      mapping mapAccessor: #discriminator.
	      mapping mapAccessor: #avatar.
	      mapping mapAccessor: #bot.
			mapping mapAccessor: #mfaEnabled to: #mfa_enabled.
			mapping mapAccessor: #verified.
			mapping mapAccessor: #email ].