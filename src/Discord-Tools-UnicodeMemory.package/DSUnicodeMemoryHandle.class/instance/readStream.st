stream-protocol
readStream
	^ (MultiByteBinaryOrTextStream with: self encoding: #UTF8) reset; yourself