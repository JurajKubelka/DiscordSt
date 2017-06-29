private - sending
detectContentDeliveryChannel
	"Detect a content-delivery channel. If not present, then use the same channel where the user message is about to be sent."
	^ self guild channels 
		detect: [ :eachChannel | eachChannel name = self class contentDeliveryChannelName ]
		ifNone: [ self channel ]