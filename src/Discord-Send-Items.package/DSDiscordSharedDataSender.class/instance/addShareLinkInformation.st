as yet unclassified
addShareLinkInformation
	| link |
	link := DSPharoLinkV2Converter new
		data: self attachmentTypes;
		markdown.
	self items informationItem
		add: (DSSendInformation newShare value: link; yourself).