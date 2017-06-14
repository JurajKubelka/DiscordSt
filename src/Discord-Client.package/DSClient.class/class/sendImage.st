examples
sendImage
	<gtExample>
	<label: 'Send a text message to the general channel'>
	
	^ DSClient new 
		email: 'email@example.com' password: 'secret-password';
		login;
		message: 'This message includes an image';
		fileName: 'random-image.jpg' 
		bytes: (ZnEasy 
			get: 'http://lorempixel.com/400/200') contents;
		yourself ";
		sendTo: [ :servers | servers first general ]"
