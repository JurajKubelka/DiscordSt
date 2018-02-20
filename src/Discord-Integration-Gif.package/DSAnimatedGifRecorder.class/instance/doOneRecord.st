private
doOneRecord
	| form |
	self traceCr: #doOneRecordStarted.
	continue ifFalse: [ ^ self ].
	form := Form fromDisplay: rectangle.
	writer nextPutImage: form.
	self traceCr: #doOneRecordFinished.