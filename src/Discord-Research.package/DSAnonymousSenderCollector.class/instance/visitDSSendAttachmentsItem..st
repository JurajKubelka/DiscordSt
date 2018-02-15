visiting
visitDSSendAttachmentsItem: aDSSendAttachmentsItem 
	stream
		nextPutAll: self indentString;
		nextPutAll: 'attachments selected: ';
		nextPutAll: aDSSendAttachmentsItem isSelected asString;
		cr.
	self increaseIndent.
	aDSSendAttachmentsItem attachments do: [ :eachAttachment |
		eachAttachment accept: self ].
	self decreaseIndent.