execute
execute
	| zip files directoryFullName |
	zip := ZipArchive new.
	directoryFullName := self directory fullName size.
	files := self directory allChildren select: [ :eachChildren | eachChildren isFile ].
	files do: [ :eachFile | | member fileName | 
		fileName := eachFile fullName allButFirst: directoryFullName.
		member := zip addString: eachFile contents utf8Encoded as: fileName.
		member desiredCompressionMethod: ZipArchive compressionDeflated ].
	self zipFile ensureDelete.
	zip writeTo: self zipFile writeStream.