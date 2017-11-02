public
download: aZnUrl 
	"Download a data from the aZnUrl."
	| response |
	response := self newZnClientWithUserAgent
		url: aZnUrl;
		accept: ZnMimeType any;
		get;
		response.
	response isSuccess 
		ifTrue: [ ^ response contents ]
		ifFalse: [ DSCannotDownloadError new 
			response: response;
			signal: ((response contents) ifNil: [ String streamContents: [ :out | response statusLine writeOn: out ] ]) ]