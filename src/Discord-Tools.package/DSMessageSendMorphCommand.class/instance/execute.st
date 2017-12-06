execute
execute
	DSScreenshotSendDialogMorph new
		screenshot: self morph;
		extent: 500@300;
		onSendDo: [ :announcement | 
			self handleSendRequestAnnouncement: announcement ];
		openInWindowLabeled: 'Send Message to Discord'.