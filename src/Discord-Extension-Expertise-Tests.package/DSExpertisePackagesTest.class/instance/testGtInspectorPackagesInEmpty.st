tests-gt-inspector-extension
testGtInspectorPackagesInEmpty
	packages := self newInstanceToBeTested.
	window := GTInspector openOn: packages.