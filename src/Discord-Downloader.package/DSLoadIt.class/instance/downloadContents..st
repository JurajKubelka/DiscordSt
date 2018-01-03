private
downloadContents: decodedData 
	decodedData do: [ :eachData | 
		DSUtility
			displayHTTPProgress: 'Downloading data (' , eachData type asString , ')'
			during: [ | response |
				response := ZnEasy client
					signalProgress: true;
					url: eachData url;
					get.
				eachData contents: response contents ] ].