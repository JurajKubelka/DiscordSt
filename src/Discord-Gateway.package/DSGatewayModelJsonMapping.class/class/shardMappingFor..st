mapping - basic
shardMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSGatewayShard customDo: [ :mapping |
			mapping
				decoder: [ :array | DSGatewayShard new
					id: array first;
					numberOfShards: array second;
					yourself ];
				encoder: [ :aShard | 
					{ aShard id. aShard numberOfShards } ] ].