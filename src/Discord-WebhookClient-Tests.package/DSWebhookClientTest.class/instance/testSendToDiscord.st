tests - discord server
testSendToDiscord
	"Post JSON entity"
	| response url |
	url := self externalWebhookTokenOrNil.
	url ifNil: [ ^ self skip: 'Webhook URL is not set.' ].
	client := self classToTest new 
		url: url;
		message: self continuousIntegrationMessageString.
	response := client send.
	self assert: response isSuccess.