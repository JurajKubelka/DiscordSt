tests-examples
testScreenshotsAndPackages
	morph := self classToTest screenshotsAndPackages.
	self assert: morph submorphs first numberOfRows equals: 10.