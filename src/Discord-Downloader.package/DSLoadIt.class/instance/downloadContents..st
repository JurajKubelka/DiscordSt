private
downloadContents: decodedData 
	decodedData do: [ :eachData | 
		DSUtility
			displayHTTPProgress: 'Downloading data (' , eachData type asString , ')'
			during: [ | response |
				response := ZnEasy client
					signalProgress: false;
					url: eachData url;
					get;
					response.
				eachData contents: response contents ] ].