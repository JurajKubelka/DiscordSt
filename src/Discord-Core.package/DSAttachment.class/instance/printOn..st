printing
printOn: aStream
	aStream << 'Attachment'.
	self isImage ifTrue: [ aStream << ' (image)' ].
	self hasData ifTrue: [ aStream << ' (downloaded)' ].
	self fileSize ifNotNil: [ :integer | 
		aStream << '('.
		DSUtility printHumanReadableBytes: integer on: aStream.
		aStream << ')' ].
	aStream << ': '.
	self filename ifNotNil: [ :string | aStream << string ].