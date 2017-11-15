mapping - basic
unixTimeInMilliSecondsMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #UnixTimeInMilliSeconds customDo: [ :mapping |
			mapping 
				encoder: [ :aDateAndTime | 
					(aDateAndTime - DateAndTime unixEpoch) asMilliSeconds ];
				decoder: [ :aStringOrNil | 
					aStringOrNil ifNotNil: [ :anInteger | 
						DateAndTime fromUnixTime: anInteger / 1000 ] ] ].