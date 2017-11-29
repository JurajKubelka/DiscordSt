execute
execute
	| zip files |
	zip := ZipArchive new.
	files := self directory allChildren select: [ :eachChildren | eachChildren isFile ].
	files do: [ :eachFile | | member | 
		member := zip addString: eachFile contents as: eachFile basename.
		member desiredCompressionMethod: ZipArchive compressionDeflated ].
	self zipFile ensureDelete.
	zip writeTo: self zipFile writeStream.