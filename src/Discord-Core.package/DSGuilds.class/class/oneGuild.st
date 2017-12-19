examples
oneGuild
	<gtExample>
	<label: 'One guild (server) with two channels'>
	^ DSModelJsonMapping 
		read: #CollectionOfGuilds 
		withMapping: #collectionOfGuildsMappingFor:
		on: DSModelJsonMapping jsonCollectionOfGuildsOne readStream