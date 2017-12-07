gt-examples
screenshot
	<gtExample>
	<label: 'Send a message with a random screenshot'>
	^ self empty
		screenshot: World submorphs atRandom;
		yourself