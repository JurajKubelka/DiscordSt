accessing
externalWebhookTokenOrNil
	"Return Discord Webhook URL used for real post testing.
	The value is secret, for that reason, we recomend you to set it in your environment.
	For example, if you use Travir-CI.org, you can set environments in settings."
	^ Smalltalk os environment at: 'DISCORD_ST_TEST_CASE_WEBHOOK' ifAbsent: nil.