initialization
initialize
	super initialize.
	command := DSNoCommand uniqueInstance.
	onSuccess := [ :aResult :aCommand | "do nothing" ].
	onError := [ :anException :aCommand | "do nothing" ].