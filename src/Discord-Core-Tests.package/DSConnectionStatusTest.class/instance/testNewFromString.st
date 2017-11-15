tests
testNewFromString
	self classToTest allStatuses do: [ :eachClass | | status |
		status := self classToTest newFromString: eachClass statusString.
		self assert: status class equals: eachClass.
		self assert: status statusString equals: eachClass statusString ].