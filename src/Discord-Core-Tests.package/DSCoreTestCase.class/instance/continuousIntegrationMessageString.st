accessing
continuousIntegrationMessageString
	"A message that is sent to a Discord test case channel"
	^ self travisMessageString ifNil: [ 
		self appveyorMessageString ifNil: [ 
			self classAndTestSelectorMessageString ] ]