initialization
initialize
	super initialize.
	command := DSNoCommand uniqueInstance.
	onSuccess := [ "do nothing" ].