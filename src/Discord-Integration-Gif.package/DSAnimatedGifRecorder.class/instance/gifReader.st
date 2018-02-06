accessing
gifReader
	bytes ifNil: [ ^ nil ].
	^ AnimatedGIFReadWriter formsFromStream: self bytes readStream