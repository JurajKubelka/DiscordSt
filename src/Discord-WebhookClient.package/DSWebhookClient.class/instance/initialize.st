initialization
initialize
	super initialize.
	webhook := self newJSONWebhook.
	waitForResponse := false.