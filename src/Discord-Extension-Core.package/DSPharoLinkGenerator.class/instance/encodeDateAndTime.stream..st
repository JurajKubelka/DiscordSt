private
encodeDateAndTime: aDateAndTime stream: aStream
	"Return encoded DateAndTime string."
	^ aDateAndTime asUnixTime printOn: aStream base: self class numberBase