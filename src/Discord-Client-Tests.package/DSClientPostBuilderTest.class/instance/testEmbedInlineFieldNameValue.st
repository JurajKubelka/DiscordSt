test - protocol - embed
testEmbedInlineFieldNameValue
	builder := self newInstanceToBeTested 
		embedInlineFieldName: self anyString value: self anyStringTwo;
		yourself.
	self assert: builder post embed fieldObjects size equals: 1.
	self assert: builder post embed fieldObjects first name equals: self anyString.
	self assert: builder post embed fieldObjects first value equals: self anyStringTwo.
	self assert: builder post embed fieldObjects first isInline.