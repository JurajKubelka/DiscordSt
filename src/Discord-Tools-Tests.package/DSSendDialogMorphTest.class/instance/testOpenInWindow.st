running
testOpenInWindow
	morph := self classToTest new.
	window := morph openInWindow.
	self assert: window notNil.