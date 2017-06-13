testing
isImage
	"If width and height are defined, it is an image."
	^ self width notNil and: [ self height notNil ]