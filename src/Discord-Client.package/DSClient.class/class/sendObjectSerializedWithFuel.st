examples
sendObjectSerializedWithFuel
	<gtExample>
	<label: 'Send an object (serialized with FUEL) as an attachment'>
	
	^ DSClient new 
		email: 'email@example.com' password: 'secret-password';
		login;
		message: 'This message includes a serialized object using FUEL';
		fileName: 'object.fuel'
		fuelObject: (DSFieldObject new fieldsAt: 'keyOne' put: Object new; yourself);
		yourself ";
		sendTo: [ :servers | servers first general ]"
