printing
printOn: aStream
	super printOn: aStream.
	self messages ifNil: [ ^ self ].
	aStream << '[' << self messages size asString << ' messages]'.