visiting
visitDSSendMorphScreenshotsItem: aDSSendScreenshotsItem 
	| submorph |
	submorph := self ensureSubmorphOfClass: DSSendScreenshotsItemMorph.
	submorph item: aDSSendScreenshotsItem.