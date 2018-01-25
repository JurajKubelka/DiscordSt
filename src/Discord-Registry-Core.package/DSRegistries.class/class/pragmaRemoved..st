announcement handling
pragmaRemoved: aPragmaRemoved 
	self uniqueInstance
		detect: [ :eachRegistry | eachRegistry origin = aPragmaRemoved pragma ]
		ifFound: [ :existingRegistry | self uniqueInstance remove: existingRegistry ]
		ifNone: [ "ignore" ].