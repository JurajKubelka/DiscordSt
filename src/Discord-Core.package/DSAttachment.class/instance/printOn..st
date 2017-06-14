printing
printOn: aStream
	aStream << 'Attachment'.
	self isImage ifTrue: [ aStream << ' (image)' ].
	self hasData ifTrue: [ aStream << ' (downloaded)' ].
	aStream << ': '.
	self filename ifNotNil: [ :string | aStream << string ].