tests
testIfFail
	| block |
	client := self classToTest new.
	block := [ :exception | exception ].
	client ifFail: block.
	self assert: client ifFailBlock equals: block.