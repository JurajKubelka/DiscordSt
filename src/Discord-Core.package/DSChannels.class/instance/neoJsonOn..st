neo-json
neoJsonOn: neoJSONWriter
	| flattenedChannels |
	flattenedChannels := DSFlattenChannelsOrderByIdCommand new
		channels: self;
		execute;
		flattenedChannels.
	neoJSONWriter writeList: flattenedChannels