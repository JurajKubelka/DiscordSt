*Discord-Extension-Core
isFuel
	"Answer true, if the attachment includes FUEL data.
	We recognize it by checking the url extension."
	^ self url 
		ifNotNil: [ :string | 
			string asZnUrl lastPathSegment
				ifNotNil: [ :segment | segment asLowercase endsWith: '.fuel' ]
				ifNil: false ]
		ifNil: false