visiting
visitDSSendAttachmentsItem: aDSSendAttachmentsItem 
	| labelMorph |
	labelMorph := 'Attachments' asMorph asReadOnlyMorph.
	^ self newCheckboxMorphFor: aDSSendAttachmentsItem labelMorph: labelMorph