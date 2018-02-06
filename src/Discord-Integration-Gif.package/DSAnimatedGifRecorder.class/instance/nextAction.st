actions
nextAction
	self trace: 'Next action: continue='; trace: continue.
	bytes ifNil: [ self trace: ', bytes is nil.' ] ifNotNil: [ self trace: ', bytes is defined.' ].
	process ifNil: [ self traceCr: ', process is nil.' ] ifNotNil: [ self traceCr: 'process is defined.' ].

	bytes ifNotNil: [ ^ self show ].
	process ifNil: [ ^ self start ] ifNotNil: [ ^ self stop ].
