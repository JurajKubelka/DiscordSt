mapping - basic
dateAndTimeMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DateAndTime customDo: [ :mapping |
			mapping 
				encoder: [ :aDateAndTime | aDateAndTime asString ];
				decoder: [ :aString | aString asDateAndTime ] ]