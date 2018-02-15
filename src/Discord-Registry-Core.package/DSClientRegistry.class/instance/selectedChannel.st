accessing
selectedChannel
	^ self selectedServer
		ifNotNil: [ :aServer | | previousChannel |
			previousChannel := selectedChannels at: aServer id ifAbsent: nil.
			previousChannel ifNil: [ | anyChannel |
				anyChannel := aServer textChannels first.
				self selectedChannel: anyChannel.
				anyChannel ] ].