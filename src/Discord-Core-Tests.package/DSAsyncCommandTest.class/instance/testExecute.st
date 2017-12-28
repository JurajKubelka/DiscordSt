tests
testExecute
	| result semaphore timeout |
	semaphore := Semaphore new.
	command := self classToTest new.
	command onSuccess: [ :aCommand | result := aCommand. semaphore signal ].
	command execute.
	timeout := semaphore waitTimeoutMSecs: 300.
	self deny: timeout description: 'The semaphore was not signaled in time'.
	self assert: result equals: command command.