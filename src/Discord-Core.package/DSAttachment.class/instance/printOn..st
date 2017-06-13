printing
printOn: aStream
	aStream << 'Attachment'.
	self isImage ifTrue: [ aStream << ' (image)' ].
	aStream << ': '.
	self filename ifNotNil: [ :string | aStream << string ].