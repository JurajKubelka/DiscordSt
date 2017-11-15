mapping - basic
identityPropertiesMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSGatewayIdentityProperties do: [ :mapping |
	      mapping mapAccessor: #os to: #'$os'.
	      mapping mapAccessor: #browser to: #'$browser'.
			mapping mapAccessor: #device to: #'$device'.
			mapping mapAccessor: #referrer to: #'$referrer'.
			mapping mapAccessor: #referringDomain to: #'$referring_domain' ].