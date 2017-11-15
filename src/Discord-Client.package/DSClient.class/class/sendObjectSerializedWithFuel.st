examples
sendObjectSerializedWithFuel
	<gtExample>
	<label: 'Send an object (serialized with FUEL) as an attachment'>
	
	^ DSClient new 
		email: 'email@example.com' password: 'secret-password';
		"login;"
		with: [ :aClient | aClient message
			content: 'This message includes a serialized object using FUEL';
			fileName: 'object.fuel'
			fuelObject: 'http://books.pharo.org' asZnUrl";
			sendTo: [ :servers | servers first general ]" ];
		yourself
