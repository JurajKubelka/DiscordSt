examples
sendFormAsScreenshot
	<gtExample>
	<label: 'Post a Form object as an attached screenshot'>
	
	^ DSClient new 
		email: 'email@example.com' password: 'secret-password';
		login;
		message: 'This is a help icon used in the Pharo image';
		fileName: 'help-icon.png' form: #help asIcon;
		yourself ";
		sendTo: [ :servers | servers first general ]"
