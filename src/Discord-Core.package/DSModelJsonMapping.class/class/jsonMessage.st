json examples - message
jsonMessage
	^ '{"id":"376084041888962816","channel_id":"376284541188962813","author":',
	self jsonUser,
	',"content":"contents of the message","timestamp":"2015-11-01T15:21:38.579002+03:00","edited_timestamp":"2015-11-01T15:22:31.579001+03:00","tts":true,"mention_everyone":false,"mentions":',
	self jsonCollectionOfUsersOne, 
	',"mention_roles":["309350229021696116"],"attachments":',
	self jsonCollectionOfAttachmentsOne, ',"embeds":', self jsonCollectionOfEmbedsOne, 
	',"reactions":', self jsonCollectionOfReactionsOne, 
	',"nonce":"my-private-id","pinned":true,"webhook_id":"376084041888962823","type":0}'