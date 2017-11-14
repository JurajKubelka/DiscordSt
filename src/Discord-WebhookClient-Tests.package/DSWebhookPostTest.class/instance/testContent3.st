tests
testContent3
	self 
		should: [ self newPost content: self contentLongString ]
		raise: DSLongMessageError.