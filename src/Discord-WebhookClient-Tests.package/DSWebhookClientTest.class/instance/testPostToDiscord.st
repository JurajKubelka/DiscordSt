tests - discord server
testPostToDiscord
	"Post JSON entity"
	| response url |
	url := self externalWebhookTokenOrNil.
	url ifNil: [ ^ self skip: 'Webhook URL is not set.' ].
	client := DSWebhookClient new 
		url: url;
		message: self continuousIntegrationMessageString.
	response := client post.
	self assert: response isSuccess.