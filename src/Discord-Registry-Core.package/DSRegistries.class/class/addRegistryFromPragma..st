private
addRegistryFromPragma: aPragma 
	self uniqueInstance 
		add: ((aPragma methodClass theNonMetaClass perform: aPragma methodSelector) 
			origin: aPragma)