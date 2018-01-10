announcement handling
handleGatewayReadyAnnouncement: aDSGatewayReadyAnnouncement 
	self client 
		me: aDSGatewayReadyAnnouncement event user;
		guilds: aDSGatewayReadyAnnouncement event guilds;
		privateChannels: aDSGatewayReadyAnnouncement event privateChannels.