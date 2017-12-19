accessing - convenience
selectedServer: aGuild 
	self registry selectedServer: aGuild.
	self changed: #channels.
	self changed: #selectedChannel.