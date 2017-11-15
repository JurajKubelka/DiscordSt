mapping - message
userMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSUser do: [ :mapping |
	      mapping mapAccessor: #id.
	      mapping mapAccessor: #username.
	      mapping mapAccessor: #discriminator.
	      mapping mapAccessor: #avatarHash to: #avatar.
	      mapping mapAccessor: #isBot to: #bot.
			mapping mapAccessor: #isMfaEnabled to: #mfa_enabled.
			mapping mapAccessor: #isVerified to: #verified.
			mapping mapAccessor: #email ].