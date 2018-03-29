execute
execute
	| items text |
	items := DSSendItems new.	
	text := self userMessage.
	items userTextMessageItem text: text.
	self addMorphScreenshot: morph to: items.
	items informationItem addPharoAndOsVersion.
	DSSendDialogMorph new
		items: items;
		extent: 400@500;
		openInWindow