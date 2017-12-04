execute
execute
	DSScreenshotSendDialogMorph new
		screenshot: self morph;
		extent: 500@300;
		onAnnouncement: DSScreenshotSendRequestAnnouncement 
		do: [ :announcement | 
			self handleSendRequestAnnouncement: announcement ];
		openInWindowLabeled: 'Send Message to Discord'.