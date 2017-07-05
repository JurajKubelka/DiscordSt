tests-gt-inspector-extension
testGtInspectorPackagesIn
	packages := self newInstanceToBeTested.
	packages add: (DSExpertisePackage new).
	packages add: (DSExpertisePackage new).
	window := GTInspector openOn: packages.
	self assert: window notNil.