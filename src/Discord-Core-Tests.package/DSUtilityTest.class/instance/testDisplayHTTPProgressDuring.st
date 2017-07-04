tests
testDisplayHTTPProgressDuring
	| result |
	result := DSUtility 
		displayHTTPProgress: 'Downloading icon' 
		during: [ ZnEasy client
			signalProgress: true;
			url: 'https://raw.githubusercontent.com/JurajKubelka/DiscordSt/client/assets/source/download-icon.png';
			get;
			response ].
	self assert: result isSuccess.