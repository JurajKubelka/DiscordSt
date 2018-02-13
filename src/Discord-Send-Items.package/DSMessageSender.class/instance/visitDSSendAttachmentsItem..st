visiting
visitDSSendAttachmentsItem: aDSSendAttachmentsItem 
	aDSSendAttachmentsItem isSelected ifFalse: [ ^ self ].
	aDSSendAttachmentsItem attachments do: [ :eachAttachment | 
		eachAttachment accept: self ]