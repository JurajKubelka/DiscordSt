examples
classes
	<gtExample>
	<label: 'Send a comment with two class definitions'>
	^ self new
		classes: { self. Object };
		onSendDo: [ :ann | self inform: 'Send message...' ];
		extent: 500@300;
		yourself