private - sending
sendPart: bytes withIndex: indexNumber
	"Send a part of serialized data to Discord"
	^ self client message
		fileName: (self fileNamePart: indexNumber) bytes: bytes;
		sendTo: self contentDeliveryChannel