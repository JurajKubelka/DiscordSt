tests
testChannel
	command := self classToTest new.
	command satisfiedBy: [ :aChannel | aChannel name = 'ROCKET CHEESE' ].
	command channels: DSCategoryChannel withTwoChannels.
	command execute.
	self assert: command satisfyingChannel notNil.
	self assert: command satisfyingChannel name equals: 'ROCKET CHEESE'.
	