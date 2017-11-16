enumerating
flattenedChannels
	^ DSFlattenChannelsKeepOrderCommand new
			channels: self channels;
			execute;
			flattenedChannels.