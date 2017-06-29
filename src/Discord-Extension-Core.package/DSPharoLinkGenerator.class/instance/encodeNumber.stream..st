private
encodeNumber: aNumber stream: aStream
	"Return an encoded number."
	^ aNumber printOn: aStream base: self class numberBase