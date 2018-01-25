accessing - convenience
username
	<return: #String>
	^ self user ifNil: [ self defaultUsername ] ifNotNil: [ :aUser | aUser username ]