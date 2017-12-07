testing
isZipArchive
	"Return true if the data are downloaded and is a ZIP archive."
	^ self hasData and: [ ZipArchive isZipArchive: self data readStream ]