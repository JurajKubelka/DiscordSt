instance creation
newInitializedRestApi
	^ self newRestApi
		announcer: self announcer;
		yourself