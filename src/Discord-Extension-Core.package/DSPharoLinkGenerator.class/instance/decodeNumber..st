private
decodeNumber: aString 
	"Return a decoded number."
	^ Number readFrom: aString base: self class numberBase