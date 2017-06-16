defaults
defaultText
	"Return a default text message, recommended as a Stack description to Discord users."
	^ String
		streamContents: [ :aStream | 
			aStream
				<< 'Write a description of the problem, e.g., steps to reproduce...'
				<< String crlfcrlf
				<< '```' << String crlf.
			self printSystemInfoOn: aStream.
			aStream << String crlf << 'Stack info: ' << String crlf.
			self printStackInfoOn: aStream.
			aStream << '```' ]