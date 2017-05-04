defaults
unauthorizedResponseBlock
	"Znserver delegate handler that returns unauthorized response."
	^ [ :request :response | 
	serverRequests add: request.
	response
		entity: (ZnEntity text: '{"code": 0, "message": "401: Unauthorized"}');
		setContentType: ZnMimeType applicationJson.
	response statusLine
		code: 401;
		reason: 'UNAUTHORIZED'.
	response ]