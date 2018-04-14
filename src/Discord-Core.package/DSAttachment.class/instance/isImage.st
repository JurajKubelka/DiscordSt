testing
isImage
	"If width and height are defined, it is an image."
	^ self width notNil and: [ 
		self height notNil and: [ 
			self filename notNil and: [ 
				(ZnMimeType 
					forFilenameExtension: self filename asFileReference extension
					ifAbsent: [ ZnMimeType default ]) main = 'image' ] ] ]