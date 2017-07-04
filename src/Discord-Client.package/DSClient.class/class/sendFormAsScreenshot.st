examples
sendFormAsScreenshot
	<gtExample>
	<label: 'Post a Form object as an attached screenshot'>
	
	^ DSClient new 
		email: 'email@example.com' password: 'secret-password';
		"login;"
		with: [ :aClient | aClient message 
			content: 'This is a help icon used in the Pharo image';
			fileName: 'help-icon.png' form: #help asIcon";
			sendTo: [ :servers | servers first general ];" ];
		yourself.
