tests
testEnsureDataWebhook3
	client := DSWebhookClient new.
	client
		username: 'Pharo Welcome';
		avatarUrl: 'http://files.pharo.org/media/logo/icon-opaque-512x512.png';
		embedTitle: 'Discord Bot Announcement';
		fileName: 'bytes.out' bytes: self bytes.