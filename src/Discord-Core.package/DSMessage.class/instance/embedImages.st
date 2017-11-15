enumerating
embedImages
	"Return all embed images."
	^ self embeds 
		select: #hasImage 
		thenCollect: [ :embed | embed image ]