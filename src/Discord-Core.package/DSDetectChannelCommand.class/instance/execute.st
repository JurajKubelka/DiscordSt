execute
execute
	self channels do: [ :eachChannel |
		self satisfyingChannel: (eachChannel detectChannel: self satisfiedBy).
		self satisfyingChannel ifNotNil: [ ^ self ] ].