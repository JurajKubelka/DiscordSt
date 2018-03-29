adding
addShareLinkInformation
	| link |
	self attachmentTypes ifEmpty: [ ^ self ].
	link := DSPharoLinkV2Converter new
		data: self attachmentTypes;
		markdown.
	self items informationItem
		add: (DSSendInformation newShare value: link; yourself).