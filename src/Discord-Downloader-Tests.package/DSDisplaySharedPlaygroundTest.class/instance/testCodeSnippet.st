tests
testCodeSnippet
	| arrayOfData data |
	data := DSSharedData newCodeSnippet.
	data
		url: 'https://example.com/snippet.txt';
		contents: self codeSnippetContents.
	arrayOfData := Array with: data yourself.
	command := self classToTest new.
	command sharedData: arrayOfData.
	window := command execute; window.
	self
		assert: command playground entity content
		equals: '

demo := MyDemo new.
demo rows: 20; columns: 40.
demo draw.
'
