examples
listenToClicks
	<gtExample>
	<label: 'A basic instance without any configuration'>
	^ self basic
		onCancelDo: [ :ann | self inform: ann ];
		onSendDo: [ :ann | self inform: ann ];
		yourself