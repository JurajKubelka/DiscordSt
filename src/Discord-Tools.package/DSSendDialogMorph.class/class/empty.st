gt-examples
empty
	<gtExample>
	<label: 'An empty dialog that informs when the Send button is pressed'>
	^ self new
		onSendDo: [ :ann | self inform: 'Send message...' ];
		extent: 500@300;
		yourself