accessing
api
	self 
		deprecated: 'Use restApi instead'
		on: 	'19 June 2017' 
		in: 'Pharo-6.0-60501-'
		transformWith: '`@receiver api' -> '`@receiver restApi'.
	^ self restApi