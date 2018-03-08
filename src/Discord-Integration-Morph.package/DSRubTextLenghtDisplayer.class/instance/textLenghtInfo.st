accessing
textLenghtInfo
	^ Text streamContents: [ :aStream |
			aStream
				withAttribute:
					(TextColor new
						color: self exceedTextColor;
						yourself)
				do: [ aStream
						nextPutAll: 'Text too long: ';
						print: self text size;
						nextPutAll: ' characters (max. ';
						print: DSConstants maxMessageLenght;
						nextPutAll: '), cursor at ';
						print: self textArea pointIndex ] ]