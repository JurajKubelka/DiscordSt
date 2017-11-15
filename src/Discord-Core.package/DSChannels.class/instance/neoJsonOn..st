neo-json
neoJsonOn: neoJSONWriter
	| flattenedChannels |
	flattenedChannels := DSFlattenChannelsCommand new
		channels: self;
		execute;
		flattenedChannels.
	neoJSONWriter writeList: flattenedChannels