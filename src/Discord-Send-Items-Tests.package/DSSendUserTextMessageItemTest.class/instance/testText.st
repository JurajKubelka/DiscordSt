tests
testText
	item := self classToTest new.
	item text: 'message'.
	self assert: item text equals: 'message'.