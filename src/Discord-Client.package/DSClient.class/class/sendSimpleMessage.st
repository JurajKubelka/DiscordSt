examples
sendSimpleMessage
	<gtExample>
	<label: 'Send a text message to the general channel'>
	
	^ DSClient new 
		email: 'email@example.com' password: 'secret-password';
		"login;"
		with: [ :aClient | aClient message
			content: 'Pharo loves Discord'";
			sendTo: [ :servers | servers first general ]" ];
		yourself
