examples
sendMorphAsScreenshot
	<gtExample>
	<label: 'Post a Morph object as an attached screenshot'>
	
	^ DSClient new 
		email: 'email@example.com' password: 'secret-password';
		"login;"
		with: [ :aClient | aClient message
			content: 'This is a screenshot of my Pharo image';
			fileName: 'screen.png' morph: World";
			sendTo: [ :servers | servers first general ]" ];
		yourself
