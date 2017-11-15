parsing
parseExpertiseOn: content
	^ (NeoJSONReader on: content readStream)
		mapInstVarsFor: DSExpertiseExpert;
		for: #CollectionOfExperts
			customDo: [ :mapping | mapping listOfType: Array andElementSchema: DSExpertiseExpert ];
		for: DSExpertisePackage
			do: [ :mapping | 
			(mapping mapInstVar: #expertise) valueSchema: #CollectionOfExperts.
			mapping mapInstVar: #package ];
		for: DSExpertisePackages
			customDo:
				[ :mapping | mapping listOfType: DSExpertisePackages andElementSchema: DSExpertisePackage ];
		nextAs: DSExpertisePackages