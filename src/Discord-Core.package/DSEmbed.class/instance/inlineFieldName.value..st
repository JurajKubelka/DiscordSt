convenience
inlineFieldName: fieldName value: fieldValue
	^ self addField: (DSEmbedField new 
		name: fieldName; 
		value: fieldValue; 
		beInline;
		yourself)