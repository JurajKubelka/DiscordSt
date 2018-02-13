converting
async
	^ DSAsyncClient new
		restApi: self restApi;
		client: self;
		yourself.