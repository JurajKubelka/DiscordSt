converting
asDataPost
	"Data Webhook includes all but embeds."
	| data |
	data := DSWebhookDataPost new.
	data
		content: self content;
		username: self username;
		avatarUrl: self avatarUrl;
		isTextToSpeech: self isTextToSpeech;
		embeds: self embeds.
	^ data