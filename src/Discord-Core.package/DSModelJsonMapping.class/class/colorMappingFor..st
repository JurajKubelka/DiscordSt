mapping - basic
colorMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: Color customDo: [ :mapping |
			mapping 
				encoder: [ :aColor | 
					(aColor blue * 255) asInteger 
						+ ((aColor green * 255) asInteger << 8) 
						+ ((aColor red * 255) asInteger << 16) ];
				decoder: [ :anInteger | 
					Color 
						r: (anInteger >> 16) / 255 
						g: (anInteger >> 8 bitClear: 16776960) / 255 
						b: (anInteger bitClear: 16776960) / 255 ] ]