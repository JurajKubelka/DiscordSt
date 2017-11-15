mapping - guild
connectionStatusMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSConnectionStatus 
		customDo: [ :mapping | 
			"We do not need an enconder as it is used only for reading."
			mapping decoder: [ :aString |
				DSConnectionStatus newFromString: aString ] ].
	DSConnectionStatus allStatuses do: [ :eachStatus |
		aNeoJSONMapper 
			for: eachStatus customDo: [ :mapping | 
				mapping encoder: [ :anInstance | anInstance statusString ] ] ].