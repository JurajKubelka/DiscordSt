tests - discord server
testSendToDiscord
	"Post JSON entity"
	| message url |
	url := self externalWebhookTokenOrNil.
	url ifNil: [ ^ self skip: 'Webhook URL is not set.' ].
	client := self classToTest new 
		url: url;
		message: self continuousIntegrationMessageString.
	message := client send.
	self assert: message class equals: DSMessage.