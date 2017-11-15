private
downloadFileFrom: aZnUrl
	"Return a content available on the given URL.
	It may raise network exceptions, e.g., timeout."

	^ DSUtility
		displayHTTPProgress: 'Downloading data'
		during: [ (ZnEasy client
				signalProgress: true;
				url: aZnUrl;
				get) contents ]