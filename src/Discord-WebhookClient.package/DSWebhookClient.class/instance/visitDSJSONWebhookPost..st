visiting
visitDSJSONWebhookPost: aDSJSONWebhookPost 
	| entity |
	entity := DSPostToEntityCommand new
		post: aDSJSONWebhookPost;
		execute;
		entity.
	^ ZnClient new
		beOneShot;
		url: self url;
		entity: entity;
		ifFail: self ifFailBlock;
		post;
		response.