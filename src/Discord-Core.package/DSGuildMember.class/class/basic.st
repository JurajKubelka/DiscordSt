examples
basic
	<gtExample>
	<label: 'Guild Member'>
	^ self jsonMappingClass
		read: DSGuildMember
		withMapping: #guildMemberMappingFor:
		on: self jsonMappingClass jsonGuildMember readStream