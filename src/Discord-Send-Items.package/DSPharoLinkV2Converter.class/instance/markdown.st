accessing - computed
markdown
	"Generate and return a complete Markdown URL, that includes link to download data to Pharo."
	^ self class urlPrefix, self encodedUrl asString, self class urlSuffix 