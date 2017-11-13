mapping - payload
payload: payloadSchema event: eventSchema mappingFor: aNeoJSONMapper
	"Configure Payload schema with a particular event schema.
	The event schema can be nil."
	aNeoJSONMapper
		for: payloadSchema do: [ :mapping | | propertyMapping |
			mapping allowNil.
			mapping 
				mapProperty: #op 
				getter: [ :object | object code ] 
				setter: [ :object :value | 
					"Check we are reading the payload."
					self assert: object code equals: value ].
	      propertyMapping := (mapping mapAccessor: #eventData to: #d).
			eventSchema ifNotNil: [ propertyMapping valueSchema: eventSchema ].
			mapping mapAccessor: #sequenceNumber to: #s.
			mapping mapAccessor: #eventName to: #t ].