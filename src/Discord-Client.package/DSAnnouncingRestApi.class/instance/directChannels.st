public - user
directChannels
	<return: #DSChannels of: #DSChannel>
	^ self catchDiscordErrorDuring: [ | channels |
		channels := self restApi directChannels.
		channels allChannelsDo: [ :eachChannel | eachChannel restApi: self ].
		self announce: (DSDirectChannelsAnnouncement new channels: channels; yourself).
		channels ]