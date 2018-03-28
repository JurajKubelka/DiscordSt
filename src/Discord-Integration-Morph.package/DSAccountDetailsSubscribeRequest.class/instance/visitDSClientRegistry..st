visiting
visitDSClientRegistry: aDSClientRegistry 
	aDSClientRegistry announcer 
		subscribe: DSAuthenticatedAnnouncement 
		send: #handleUserAuthenticatedAnnouncement: 
		to: self morph.