as yet unclassified
visitDSSendPackagesItem: aDSSendPackagesItem 
	| submorph |
	submorph := self ensureSubmorphOfClass: DSSendPackagesItemMorph.
	submorph item: aDSSendPackagesItem.