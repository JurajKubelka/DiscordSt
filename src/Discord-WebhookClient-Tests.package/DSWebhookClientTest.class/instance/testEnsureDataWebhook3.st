tests
testEnsureDataWebhook3
	client := DSWebhookClient new.
	client
		username: 'Pharo Welcome';
		avatarUrl: 'http://files.pharo.org/media/logo/icon-opaque-512x512.png';
	embed: (DSEmbedObject new 
		title: 'Discord Bot Announcement'; 
		yourself).
	self 
		should: [ client fileName: 'bytes.out' bytes: self bytes ]
		raise: DSWrongCombinationError.