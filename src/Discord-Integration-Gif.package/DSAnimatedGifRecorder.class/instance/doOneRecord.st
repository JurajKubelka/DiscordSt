private
doOneRecord
	| form |
	continue ifFalse: [ ^ self ].
	form := Form fromDisplay: rectangle.
	writer nextPutImage: form.