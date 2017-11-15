tests
testChannel3
	command := self classToTest new.
	command satisfiedBy: [ :aChannel | aChannel name = 'general' ].
	command channels: DSCategoryChannel withTwoChannels.
	command execute.
	self assert: command satisfyingChannel notNil.
	self assert: command satisfyingChannel name equals: 'general'.
	