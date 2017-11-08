*Discord-Client
jsonClientPost
	^ '{"content":"the message contents (up to 2000 characters)","nonce":"1343243","tts":true,"embed":', 
	self jsonEmbedOneField,  '}'