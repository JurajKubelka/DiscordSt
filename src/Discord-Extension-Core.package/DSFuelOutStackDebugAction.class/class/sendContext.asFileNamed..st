public
sendContext: aContext asFileNamed: fileNameString 
	| stream |
	stream := ByteArray new writeStream.
	self serializeTestFailureContext: aContext toStream: stream.
	DSSendCommand sendObject: stream contents.