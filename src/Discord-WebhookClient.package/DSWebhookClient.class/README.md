I execute Discord webhook using
POST/webhooks/{webhook.id}/{webhook.token}.

See documentation at https://discordapp.com/developers/docs/resources/webhook#execute-webhook

Basic usage is the following:

{{{
DSWebhookClient new 
	url: 'https://discordapp.com/api/webhooks/webhook-id/webhook-token';
	message: 'Hello! I am a Bot executed from Pharo';
	send
}}}

You can obtain the URL link from Discord application.