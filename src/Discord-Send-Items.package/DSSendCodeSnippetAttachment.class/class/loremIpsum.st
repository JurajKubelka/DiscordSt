examples
loremIpsum
	<gtExample>
	<label: 'Basic example with Lorem Ipsum content.'>
	^ self new 
		codeSnippet: (String loremIpsum: 200);
		yourself