accessing - computed
decodedData
	<return: #Array of: #DSSharedData>
	| mimeStream gzstream content |
	self assert: [ self data isString ] description: 'Data should include Base64 encoded data'.
	mimeStream := Base64MimeConverter mimeDecodeToChars: self data readStream.
	gzstream := GZipReadStream on: mimeStream.
	content := gzstream upToEnd.
	gzstream close.
	^ (self class dataLineSeparator split: content) 
		collect: [ :eachLine | | index |
			index := eachLine findFirst: [ :eachChar | eachChar = $+ ].
			(DSSharedData ofType: (eachLine first: index - 1))
				url: (eachLine last: eachLine size - index);
				yourself.
		 ] as: Array
