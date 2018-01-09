public - guild
channelsInGuild: aDSGuild 
	<return: #DSChannels of: #DSChannel>
	^ self catchDiscordErrorDuring: [ | channels |
		channels := self restApi channelsInGuild: aDSGuild.
		channels allChannelsDo: [ :eachChannel | eachChannel restApi: self ].
		self announce: (DSChannelsAnnouncement new channels: channels; yourself).
		channels ]