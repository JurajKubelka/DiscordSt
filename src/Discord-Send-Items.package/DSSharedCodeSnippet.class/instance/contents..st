accessing
contents: aByteArrayOrNil
	"The argument should be a decoded UFT8 string."
	aByteArrayOrNil ifNil: [ ^ self ].
	string := aByteArrayOrNil utf8Decoded.