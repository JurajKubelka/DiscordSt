json examples - channel
jsonAllPropertiesChannel
	^ '{"id":"376680041881962816","type":0,"guild_id":"376204541188962822","position":1,"permission_overwrites":',
	self jsonCollectionOfOverwritesOne,
	',"name":"the name of the channel (2-100 characters)","topic":"the channel topic (0-1024 characters)","nsfw":false,"last_message_id":"372200541188962021","bitrate":1204,"user_limit":24,"recipients":',
	self jsonCollectionOfUsersOne, 
	',"icon":"309350229021696111","owner_id":"319350229021696243","application_id":"319347229021696269","parent_id":"371083041588962823"}'