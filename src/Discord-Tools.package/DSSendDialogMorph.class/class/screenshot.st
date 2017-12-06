examples
screenshot
	<gtExample>
	<label: 'Send a message with a random screenshot'>
	^ self new
		screenshot: World submorphs atRandom;
		onSendDo: [ :ann | self inform: 'Send message...' ];
		extent: 500@300;
		yourself