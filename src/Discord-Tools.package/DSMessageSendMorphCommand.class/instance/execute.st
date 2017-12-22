execute
execute
	DSSendDialogMorphOld new
		screenshot: self morph;
		selection: self packages;
		registries: DSRegistries uniqueInstance;
		extent: 500@300;
		onSendDo: [ :announcement | 
			self handleSendRequestAnnouncement: announcement ];
		openInWindowLabeled: 'Send Message to Discord'.