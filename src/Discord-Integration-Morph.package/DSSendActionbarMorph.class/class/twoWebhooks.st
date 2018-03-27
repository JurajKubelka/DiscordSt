examples
twoWebhooks
	<gtExample>
	<label: 'Add two webhooks registry'>
	| ui |
	ui := self listenToClicks
		registries: DSRegistries twoWebhooks;
		yourself.
	"self assert: ui selection notNil."
	^ ui