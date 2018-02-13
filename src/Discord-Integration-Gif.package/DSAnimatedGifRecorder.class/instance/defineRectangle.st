private
defineRectangle
	isRectangleRequested := true.
	self announceRectangleRequest.
	rectangle ifNil: [ 
		self inform: 'Define recording area...'.
		rectangle := Rectangle fromUser ].
	isRectangleRequested := false.
