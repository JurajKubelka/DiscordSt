private - sending
sendPart: bytes withIndex: indexNumber
	"Send a part of serialized data to Discord"

	^ self client message
		signalProgress: true;
		fileName: (self fileNamePart: indexNumber) bytes: bytes;
		with: [ :aMessage | 
			self
				displayProgress: 'Sending data part ' , indexNumber asString
				whileSending: aMessage
				toChannel: self contentDeliveryChannel ]