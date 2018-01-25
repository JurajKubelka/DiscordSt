examples
textOnly
	<gtExample>
	<label: 'Send dialog with text editing area'>
	^ self empty
		items: DSSendItems textAndRegistries;
		yourself