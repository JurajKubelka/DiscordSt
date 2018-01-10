initialization
subscribeForEvents
	self client announcer
		subscribe: DSGatewayReadyAnnouncement send: #handleGatewayReadyAnnouncement: to: self.