initialize-release
close
	self halt.
	self owner ifNotNil: #delete ifNil: [ self delete ]