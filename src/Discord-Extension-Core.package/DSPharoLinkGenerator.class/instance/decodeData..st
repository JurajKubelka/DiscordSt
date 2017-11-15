protocol
decodeData: encodedString 
	"Decode data that includes URLs. Each URL on a line separated by String crlf.
	Return a collection of ZnUrl objects."
	| encodedStream gzstream content |
	encodedStream := encodedString base64Decoded readStream.
	gzstream := GZipReadStream on: encodedStream.
	content := gzstream upToEnd.
	gzstream close.
	^ (self class dataLineSeparator split: content) collect: #asZnUrl as: Array