tests-accessing
testScreenshots
	attachment := self classToTest new.
	self assert: attachment screenshots isEmpty.