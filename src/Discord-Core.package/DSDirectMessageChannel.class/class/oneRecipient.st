examples
oneRecipient
	<gtExample>
	<label: 'A direct message'>
	^ self jsonMappingClass 
		read: self 
		withMapping: #specifiedChannelMappingFor:
		on: self jsonMappingClass jsonChannelDirectMessage readStream