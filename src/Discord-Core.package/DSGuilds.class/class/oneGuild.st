examples
oneGuild
	<gtExample>
	<label: 'One guild (server) with two channels'>
	^ self jsonMappingClass 
		read: #CollectionOfGuilds 
		withMapping: #collectionOfGuildsMappingFor:
		on: self jsonMappingClass jsonCollectionOfGuildsOne readStream