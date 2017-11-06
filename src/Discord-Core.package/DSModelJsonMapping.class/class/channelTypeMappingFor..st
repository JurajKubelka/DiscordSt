mapping - channel
channelTypeMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSChannelType customDo: [ :mapping |
			mapping 
				"We do not need an enconder as it is used only for reading."
				decoder: [ :anInteger | 
					DSChannelType newFromNumber: anInteger ] ].
	DSChannelType allChannelTypes do: [ :eachType | 
		aNeoJSONMapper 
			for: eachType customDo: [ :mapping |
				mapping
					encoder: [ :anInstance | anInstance typeNumber ] ] ]