printing
printOn: aStream
	aStream << 'Gateway v5'.
	self isConnected
		ifTrue: [ aStream << ' (connected)' ] 
		ifFalse: [ aStream << ' (disconneted)' ]