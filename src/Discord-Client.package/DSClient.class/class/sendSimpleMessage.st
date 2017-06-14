examples
sendSimpleMessage
	<gtExample>
	<label: 'Send a text message to the general channel'>
	
	^ DSClient new 
		email: 'email@example.com' password: 'secret-password';
		login;
		message: 'Pharo loves Discord';
		yourself ";
		sendTo: [ :servers | servers first general ]"
