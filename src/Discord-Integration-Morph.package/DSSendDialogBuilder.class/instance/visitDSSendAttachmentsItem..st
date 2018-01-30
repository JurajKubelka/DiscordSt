visiting
visitDSSendAttachmentsItem: aDSSendAttachmentsItem 
	| submorph |
	submorph := self ensureSubmorphOfClass: DSSendAttachmentsMorph.
	submorph item: aDSSendAttachmentsItem.