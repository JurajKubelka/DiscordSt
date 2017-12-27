tests
testShowPreviewDefault
	morph := self classToTest new.
	window := morph openInWindow.
	morph simulateClick.
	self assert: window notNil.