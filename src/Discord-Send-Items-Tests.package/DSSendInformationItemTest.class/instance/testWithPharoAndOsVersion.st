tests
testWithPharoAndOsVersion
	item := self classToTest withPharoAndOsVersion.
	self assert: item infos size equals: 2.
	self assert: item infos first name equals: 'Pharo'.
	self assert: item infos second name equals: 'OS'.
	