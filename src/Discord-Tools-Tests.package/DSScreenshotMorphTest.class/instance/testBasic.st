tests
testBasic
	"It should not produce any error without additional information."
	morph := self classToTest new.
	window := morph openInWindow.
	self assert: window isSystemWindow.