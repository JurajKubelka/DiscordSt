announcement handling
handleGatewayReadyAnnouncement: aDSGatewayReadyAnnouncement 
	self updateUser: aDSGatewayReadyAnnouncement event user.
	self updateGuilds: aDSGatewayReadyAnnouncement event guilds.
	self updatePrivateChannels: aDSGatewayReadyAnnouncement event privateChannels.
	self client announcer announce: (DSClientConnectedAnnouncement new client: self client; yourself)