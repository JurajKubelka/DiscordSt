examples
sendImage
	<gtExample>
	<label: 'Send an image or any other file'>
	
	^ DSClient new 
		email: 'email@example.com' password: 'secret-password';
		"login;"
		with: [ :aClient | aClient message
			content: 'This message includes an image';
			fileName: 'random-image.jpg' 
			bytes: (ZnEasy 
				get: 'http://lorempixel.com/400/200') contents";
			sendTo: [ :servers | servers first general ]" ];
		yourself.