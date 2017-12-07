execute
execute
	DSSendDialogMorph new
		screenshot: self morph;
		selection: self packages;
		extent: 500@300;
		onSendDo: [ :announcement | 
			self handleSendRequestAnnouncement: announcement ];
		openInWindowLabeled: 'Send Message to Discord'.