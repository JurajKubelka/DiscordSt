accessing
api: aDSApi 
	self 
		deprecated: 'Use restApi: instead'
		on: 	'19 June 2017' 
		in: 'Pharo-6.0-60501-'
		transformWith: '`@receiver api: `@arg' -> '`@receiver restApi: `@arg'.
	^ self restApi: aDSApi 