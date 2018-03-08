examples
loremIpsum
	<gtExample>
	<label: 'Indication of a maximum text lenght'>
	| textModel |
	textModel := RubScrolledTextModel new.
	textModel text: (String loremIpsum: (DSConstants maxMessageLenght + 1)).
	^ textModel newScrolledText 
			beWrapped;
			extent: 400@300;
			withRulerNamed: #dstextlenght;
			yourself.