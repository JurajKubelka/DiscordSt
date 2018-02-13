accessing
codeSnippet
	<gtExample>
	<label: 'With a code snippet attachment'>
	^ self new
		addCodeSnippet: (String loremIpsum: 100);
		yourself