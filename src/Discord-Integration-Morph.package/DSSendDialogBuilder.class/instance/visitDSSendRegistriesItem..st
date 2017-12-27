visiting
visitDSSendRegistriesItem: aDSSendRegistriesItem 
	| registriesMorph |
	registriesMorph := self ensureSubmorphOfClass: DSSendRegistriesItemMorph.
	registriesMorph item: aDSSendRegistriesItem.