asserting
skipIfNotAuthenticated
	self client isAuthenticated ifFalse: [ self skip ]