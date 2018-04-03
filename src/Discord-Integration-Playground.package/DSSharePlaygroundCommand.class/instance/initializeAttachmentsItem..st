private
initializeAttachmentsItem: items
	items attachmentItem 
		isSelected: self settingsClass wasAttachmentsSelected;
		onSelectionChangedDo: [ :announcement | 
			self settingsClass wasAttachmentsSelected: announcement state ].