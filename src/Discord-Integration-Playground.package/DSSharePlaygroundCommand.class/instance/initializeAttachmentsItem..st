private
initializeAttachmentsItem: items
	items attachmentItem 
		isSelected: DSSharePlaygroundSettings wasAttachmentsSelected;
		onSelectionChangedDo: [ :announcement | 
			DSSharePlaygroundSettings wasAttachmentsSelected: announcement state ].