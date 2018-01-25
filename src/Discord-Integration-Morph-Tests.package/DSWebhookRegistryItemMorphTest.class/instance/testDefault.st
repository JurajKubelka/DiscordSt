tests
testDefault
	morph := self classToTest new.
	window := morph openInWindow.
	self assert: window notNil.