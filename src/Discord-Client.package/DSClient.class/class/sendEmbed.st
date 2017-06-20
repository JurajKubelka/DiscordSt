examples
sendEmbed
	<gtExample>
	<label: 'Send an embed object.'>
	
	^ DSClient new 
		email: 'email@example.com' password: 'secret-password';
		login;
		embedTitle: 'Discord Message Title';
		embedDescription: 'Hello! I am a message with a [link](http://world.st)';
		embedUrl: 'http://pharo.org';
		embedColor: Color random;
		embedFooterText: 'Pharo Project';
		embedFooterIconUrl: 'attachment://footer.png';
		embedThumbnailUrl: 'attachment://thumbnail.png';
		embedImageUrl: 'attachment://screenshot.png';
		embedInlineFieldName: 'Pharo' value: SystemVersion current version asString;
		embedInlineFieldName: 'OS' value: '[', Smalltalk os name asString, '](https://en.wikipedia.org/wiki/Operating_system)';
		fileName: 'screenshot.png' morph: World submorphs atRandom;
		fileName: 'thumbnail.png' form: #help asIcon;
		fileName: 'footer.png' form: #pharo asIcon;
		yourself ";
		sendTo: [ :servers | servers first general ]"
