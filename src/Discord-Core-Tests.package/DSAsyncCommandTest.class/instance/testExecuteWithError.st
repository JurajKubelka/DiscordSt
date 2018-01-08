tests
testExecuteWithError
	| result semaphore timeout |
	semaphore := Semaphore new.
	command := self classToTest new.
	command command: DSBlockCommand new.
	command command block: [ Error signal: 'mock error' ].
	command onError: [ :anException :aCommand | 
		result := Array with: anException with: aCommand. 
		semaphore signal ].
	command execute.
	timeout := semaphore waitTimeoutMSecs: 300.
	self deny: timeout description: 'The semaphore was not signaled in time'.
	self assert: result isCollection description: 'Result should be a collection of two items'.
	self assert: result first class equals: Error.
	self assert: result second equals: command command.