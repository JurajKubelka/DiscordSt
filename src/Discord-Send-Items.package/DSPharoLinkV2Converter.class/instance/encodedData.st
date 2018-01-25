accessing - computed
encodedData
	"Return types and URLs enconded in one Base64 string."
	<return: #String>
	| string |
	self assert: [ self data notNil ] description: 'You have to set the collection of shared data'.
	self assert: [ self data isCollection ] description: 'Data should includes an array of DSSharedData objects'.
	string := (String streamContents: [ :aStream | | gzstream |
			gzstream := GZipWriteStream on: aStream.
			self data
				do: [ :eachSharedData | 
					gzstream 
						nextPutAll: eachSharedData type asString;
						nextPut: self class typeSeparator;
						nextPutAll: eachSharedData url asString ]
				separatedBy: [ gzstream nextPutAll: self class dataLineSeparator ].
			gzstream close. ]).
	^ (Base64MimeConverter mimeEncode: string readStream multiLine: false) contents.