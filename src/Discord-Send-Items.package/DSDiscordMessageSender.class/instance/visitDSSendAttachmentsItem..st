visiting
visitDSSendAttachmentsItem: aDSSendAttachmentsItem 
	aDSSendAttachmentsItem attachments do: [ :eachAttachment | 
		eachAttachment accept: self ]