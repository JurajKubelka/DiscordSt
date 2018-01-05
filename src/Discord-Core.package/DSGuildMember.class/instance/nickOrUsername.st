accessing - convenience
nickOrUsername
	"Return a nick or username"
	<return: #String>
	^ self nick ifNil: [ self username ]