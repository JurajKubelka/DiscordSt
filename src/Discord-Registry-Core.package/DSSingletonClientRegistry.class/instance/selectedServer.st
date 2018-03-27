accessing
selectedServer
	^ selectedServer ifNil: [ selectedServer := self servers ifEmpty: nil ifNotEmpty: #first ]