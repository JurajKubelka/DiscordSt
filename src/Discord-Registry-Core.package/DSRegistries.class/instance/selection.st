accessing
selection
	^ selection ifNil: [ selection := self defaultSelection ]