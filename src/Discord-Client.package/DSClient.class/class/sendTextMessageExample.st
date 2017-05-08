examples
sendTextMessageExample
	<gtExample>
	<label: 'Send a text message to the general channel'>
	| client message |
	client := DSClient new.
	message := client 
		email: 'email@example.com' password: 'secret-password';
		login;
		message: 'Pharo loves Discord';
		sendTo: client servers first general.
	^ message