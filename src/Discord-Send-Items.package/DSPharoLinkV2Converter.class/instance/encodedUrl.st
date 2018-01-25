accessing - computed
encodedUrl
	"Generate and return a complete URL value, that includes link to download data to Pharo."
	^ self url asZnUrl 
		? (self class dataQuery -> self encodedData)