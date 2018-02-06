actions
nextAction
	bytes ifNotNil: [ ^ self show ].
	process ifNil: [ ^ self start ] ifNotNil: [ ^ self stop ].
