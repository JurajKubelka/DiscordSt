accessing
url
	^ url ifNotNil: [ :anUrl |
		anUrl queryAt: #wait put: self waitForResponse ]