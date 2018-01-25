examples
listenToClicks
	<gtExample>
	<label: 'Display an information on button clicks'>
	^ self basic
		onCancelDo: [ :ann | self inform: ann ];
		onSendDo: [ :ann | self inform: ann ];
		yourself