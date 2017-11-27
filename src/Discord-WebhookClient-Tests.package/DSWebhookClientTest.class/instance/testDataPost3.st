tests
testDataPost3
	client := self classToTest new.
	client
		username: 'Pharo Welcome';
		avatarUrl: 'http://files.pharo.org/media/logo/icon-opaque-512x512.png';
		embedTitle: 'Discord Bot Announcement';
		fileName: 'bytes.out' bytes: self bytes.
	self assert: client post username equals: 'Pharo Welcome'.
	self assert: client post avatarUrl equals: 'http://files.pharo.org/media/logo/icon-opaque-512x512.png'.
	self assert: client post embeds first title equals: 'Discord Bot Announcement'.
	self assert: client post mimeParts first fileName equals: 'bytes.out'.
	self assert: client post mimeParts first contents equals: self bytes.
	