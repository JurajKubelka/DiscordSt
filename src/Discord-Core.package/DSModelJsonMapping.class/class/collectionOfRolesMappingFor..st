mapping - message
collectionOfRolesMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfRoles customDo: [ :mapping |
			mapping listOfElementSchema: DSRole ].
	self roleMappingFor: aNeoJSONMapper.