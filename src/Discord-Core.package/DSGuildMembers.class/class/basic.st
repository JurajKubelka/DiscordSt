examples
basic
	<gtExample>
	<label: 'One Guild Member'>
	^ self jsonMappingClass
		read: #CollectionOfGuildMembers
		withMapping: #collectionOfGuildMembersMappingFor:
		on: self jsonMappingClass jsonCollectionOfGuildMembersOne readStream