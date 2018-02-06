private
defineRectangle
	self announceRectangleRequest.
	rectangle ifNil: [ 
		self inform: 'Define recording area...'.
		rectangle := Rectangle fromUser ]