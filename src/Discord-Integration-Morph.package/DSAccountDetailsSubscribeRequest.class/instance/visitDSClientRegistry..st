visiting
visitDSClientRegistry: aDSClientRegistry
	aDSClientRegistry announcer
		when: DSAuthenticatedAnnouncement
		send: #handleUserAuthenticatedAnnouncement:
		to: self morph