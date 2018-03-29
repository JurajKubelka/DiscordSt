accessing
userMessage
	^ DSUtility markdownOf: (selectedText ifEmpty: [ wholeText ])