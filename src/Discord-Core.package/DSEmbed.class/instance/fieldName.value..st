convenience
fieldName: fieldName value: fieldValue
	^ self addField: (DSEmbedField new 
		name: fieldName; 
		value: fieldValue; 
		yourself)