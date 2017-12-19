accessing
registries: aRegistries 
	self submorphs fourth registries: aRegistries.
	aRegistries onSelectionChangedDo: [ :ann | 
		self submorphs fifth registry: ann selection ].