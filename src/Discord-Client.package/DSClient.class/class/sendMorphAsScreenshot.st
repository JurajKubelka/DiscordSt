examples
sendMorphAsScreenshot
	<gtExample>
	<label: 'Post a Morph object as an attached screenshot'>
	
	^ DSClient new 
		email: 'email@example.com' password: 'secret-password';
		login;
		message: 'This is a screenshot of my Pharo image';
		fileName: 'screen.png' morph: World;
		yourself ";
		sendTo: [ :servers | servers first general ]"
