accessing
textLenghtInfo
	^ Text streamContents: [ :aStream | | textColor |
			textColor := self exceedsMessageLenghtLimit
				ifTrue: [ self exceedTextColor ]
				ifFalse: [ self textColor ].
			aStream
				withAttribute:
					(TextColor new
						color: textColor;
						yourself)
				do: [ aStream
						nextPutAll: 'Length: ';
						print: self text size;
						nextPutAll: ' out of ';
						print: DSConstants maxMessageLenght.
				self exceedsMessageLenghtLimit ifTrue: [ 
					aStream 
						nextPutAll: ' Cursor position: ';
						print: self textArea pointIndex ] ] ]