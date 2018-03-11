testing
hasFuelAttachments
	"Return true, if any attachment holds a FUEL data.
	FUEL data are serialized Pharo objects. See FLSerializer."
	^ self hasAttachments and: [ self attachments anySatisfy: [ :eachAttachment |
			eachAttachment isFuel ] ]