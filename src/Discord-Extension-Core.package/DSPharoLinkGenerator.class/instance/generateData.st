private
generateData
	^ (String streamContents: [ :aStream | | gzstream |
			gzstream := GZipWriteStream on: aStream.
			((self previousMessages flatCollect: #attachments) collect: #url)
				do: [ :anUrl | gzstream nextPutAll: anUrl asString ]
				separatedBy: [ gzstream nextPutAll: self class dataLineSeparator ].
			gzstream close. ]) base64Encoded