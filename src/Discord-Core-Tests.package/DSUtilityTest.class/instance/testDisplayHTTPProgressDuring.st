tests
testDisplayHTTPProgressDuring
	| result |
	result := DSUtility 
		displayHTTPProgress: 'Downloading icon' 
		during: [ ZnEasy client
			signalProgress: true;
			url: 'https://raw.githubusercontent.com/JurajKubelka/DiscordSt/master/assets/source/download-icon.png';
			get;
			response ].
	self assert: result isSuccess.