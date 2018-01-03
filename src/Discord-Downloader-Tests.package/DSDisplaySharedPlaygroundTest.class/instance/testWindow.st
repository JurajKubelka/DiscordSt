tests
testWindow
	command := self classToTest new.
	window := command execute; window.
	self assert: window notNil.
	self assert: window isSystemWindow.
	self assert: command playground entity content isEmpty.