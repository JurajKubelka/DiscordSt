private
defaultText
	"Return a default text message, recommended as the object description to Discord users."
	^ String
		streamContents: [ :aStream | 
			aStream
				<< 'Write a description of the problem, e.g., steps to reproduce...'
				<< String crlfcrlf
				<< '```' << String crlf
				<< self object printString << String crlf
				<< '```' ]