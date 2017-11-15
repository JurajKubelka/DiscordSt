initialization
decodeUrls
	"Decode URLs to FUEL data.
	See DSPharoLinkGenerator for more details."
	urls := DSPharoLinkGenerator new
		decodeData: self encodedUrls.