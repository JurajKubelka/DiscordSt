execute
execute
	| response |
	response := DSUtility newZnClientWithUserAgent
		url: self url;
		accept: ZnMimeType any;
		get;
		response.
	response isSuccess 
		ifTrue: [ self contents: response contents ]
		ifFalse: [ DSCannotDownloadError new 
			response: response;
			signal: ((response contents) ifNil: [ String streamContents: [ :out | response statusLine writeOn: out ] ]) ]