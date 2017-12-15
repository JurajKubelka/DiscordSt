accessing
selection: anObject
	self registries ifNotNil: [ :aDSRegistries | aDSRegistries selection: anObject ]