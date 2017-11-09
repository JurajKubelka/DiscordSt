mapping - payload
payload: payloadSchema event: eventSchema mappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: payloadSchema do: [ :mapping |
			mapping 
				mapProperty: #op 
				getter: [ :object | object code ] 
				setter: [ :object :value | 
					"Check we are reading the payload."
					self assert: object code equals: value ].
	      (mapping mapAccessor: #eventData to: #d) valueSchema: eventSchema.
			mapping mapAccessor: #sequenceNumber to: #s.
			mapping mapAccessor: #eventName to: #t ].