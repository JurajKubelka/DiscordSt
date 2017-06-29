private - sending
sendPart: bytes index: indexNumber
	^ self client
		fileName: (self fileNamePart: indexNumber) bytes: bytes;
		sendTo: self contentDeliveryChannel