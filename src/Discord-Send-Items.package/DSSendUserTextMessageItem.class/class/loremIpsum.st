examples
loremIpsum
	<gtExample>
	<label: 'Basic example with Lorem Ipsum content.'>
	^ self new 
		text: (String loremIpsum: 200);
		yourself