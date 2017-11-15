accessing
api
	self 
		deprecated: 'Use restApi instead'
		on: 	'13 June 2017' 
		in: 'Pharo-6.0-60499-'
		transformWith: '`@receiver api' -> '`@receiver restApi'.
	^ self restApi