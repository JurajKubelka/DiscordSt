json example - event
jsonIdentityEvent
	^ '{"token":"a secret token","properties":', self jsonIdentityProperties, ',"compress":true,"large_threshold":72,"shard":', 
	self jsonShard, ',"presence":', self jsonStatusUpdate, '}'