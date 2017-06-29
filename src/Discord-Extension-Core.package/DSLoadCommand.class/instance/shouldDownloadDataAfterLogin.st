testing
shouldDownloadDataAfterLogin
	"Return true if encoded URLs are not present, but encoded FUEL ids are present.
	The FUEL data can thus be downloaded after Discord authentication."
	^ self shouldDownloadDataDirectly not and: [ 
		self encodedFuelId notNil ]