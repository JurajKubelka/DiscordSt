operations
post
	| entity |
	entity := DSPostToEntityCommand new
		post: self webhook;
		execute;
		entity.
	^ ZnClient new
		url: self url;
		entity: entity;
		ifFail: self ifFailBlock;
		post;
		response.