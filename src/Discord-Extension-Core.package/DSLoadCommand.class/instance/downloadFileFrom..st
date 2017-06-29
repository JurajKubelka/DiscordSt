private
downloadFileFrom: aZnUrl 
	"Return a content available on the given URL.
	It may raise network exceptions, e.g., timeout."
	^ (ZnEasy get: aZnUrl) contents