tests
testIfFailBlock
	client := self classToTest new.
	self assert: client ifFailBlock isBlock.