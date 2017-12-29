accessing
url
	^ url ifNil: [ url := self class defaultUrl ]