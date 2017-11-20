accessing - computed
defaultText
	^ String
		streamContents: [ :stream | 
			stream << 'Write a question...' << String cr << String cr
				<< '```Smalltalk' << String cr << self playgroundCodeSnippet
				<< String cr << '```' << String cr ]