examples
screenshot
	<gtExample>
	^ self new
		screenshot: World submorphs atRandom;
		onSendDo: [ :ann | self inform: 'Send message...' ];
		extent: 500@300;
		yourself