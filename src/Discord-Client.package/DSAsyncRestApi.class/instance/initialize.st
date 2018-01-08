initialization
initialize
	super initialize.
	restApi := self newRestApi.
	onSuccess := [ :aResult | "do nothing" ].
	onError := [ :anException | anException pass ].