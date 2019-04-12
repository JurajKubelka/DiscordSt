private
addRegistryFromPragma: aPragma
	self uniqueInstance
		add:
			((aPragma methodClass instanceSide perform: aPragma methodSelector)
				origin: aPragma)