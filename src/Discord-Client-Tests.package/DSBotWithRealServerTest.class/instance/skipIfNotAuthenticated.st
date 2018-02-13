asserting
skipIfNotAuthenticated
	(self client isAuthenticated 
		and: [ self client isConnected ]) ifFalse: [ self skip ]