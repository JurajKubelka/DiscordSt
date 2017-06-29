testing
shouldDownloadDataDirectly
	"Return true, if encoded URLs are present.
	The FUEL data can thus be downloaded directly without Discord authentication."
	^ self encodedUrls notNil