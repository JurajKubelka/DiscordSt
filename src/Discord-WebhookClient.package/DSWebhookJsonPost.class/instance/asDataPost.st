converting
asDataPost
	"Convert JSON post to a data post."
	<return: #TDSDataPost>
	| data |
	data := DSWebhookDataPost new.
	data
		content: self content;
		username: self username;
		avatarUrl: self avatarUrl;
		isTextToSpeech: self isTextToSpeech;
		embeds: self embeds.
	^ data