mapping - basic
durationInSecondsMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #DurationInSeconds customDo: [ :mapping |
			mapping 
				encoder: [ :aDuration | aDuration asSeconds ];
				decoder: [ :anIntegerOrNil | 
					anIntegerOrNil ifNotNil: [ :anInteger | anInteger seconds ] ] ]