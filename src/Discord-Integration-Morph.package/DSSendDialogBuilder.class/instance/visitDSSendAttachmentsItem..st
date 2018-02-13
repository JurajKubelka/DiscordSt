visiting
visitDSSendAttachmentsItem: aDSSendAttachmentsItem 
	| submorph |
	submorph := self ensureSubmorphOfClass: DSSendAttachmentsItemMorph.
	submorph item: aDSSendAttachmentsItem.