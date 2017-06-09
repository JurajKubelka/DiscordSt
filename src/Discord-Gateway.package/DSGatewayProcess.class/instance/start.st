public
start
	"Start a process if not active yet."
	^ mutex critical: [ 
		self isInactive ifTrue: [ self initializeProcess ].
		process ]