accessing
contentDeliveryChannel
	^ contentDeliveryChannel ifNil: [ 
			contentDeliveryChannel := self detectContentDeliveryChannel ]