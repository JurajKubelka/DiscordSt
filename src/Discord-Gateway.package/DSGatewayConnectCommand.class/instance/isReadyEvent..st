private - testing
isReadyEvent: json 
	"Answer whether a JSON object is a Ready Event"
	^ (json at: #op ifAbsent: nil) = 0 and: [ 
		(json at: #t ifAbsent: nil) = 'READY' ]