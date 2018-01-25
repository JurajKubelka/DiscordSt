tests-accessing
testDecodedData
	| data result |
	data := 'H4sIAAAAAAAAACvJz0vN0c4oKSkottLXT61IzC3ISdVLzs/VB8voVWUW8HIl56ekBudlFhSklmBVCpLXLYYo0CsuAQCrPc3fVAAAAA=='.
	builder := self classToTest new.
	builder data: data.
	result := builder decodedData.
	self assert: result isCollection.
	self assert: result size equals: 2.
	self assert: result first type equals: DSSharedData newTonel type.
	self assert: result first url equals: 'https://example.com/tonel.zip'.
	self assert: result second type equals: DSSharedData newCodeSnippet type.
	self assert: result second url equals: 'https://example.com/code-snippet.st'.