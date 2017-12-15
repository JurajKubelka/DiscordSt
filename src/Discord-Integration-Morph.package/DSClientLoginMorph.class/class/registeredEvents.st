requirements
registeredEvents
	<gtExample>
	<label: 'Register email and password auto accept events and login request event'>
	^ self empty
			onEmailUpdateDo: [ :email | self inform: 'Email: ', email asString];
			onPasswordUpdateDo: [ :password | self inform: 'Password: ', password asString];
			onLoginRequestDo: [ :email :password | 
				self inform: 'Login as ', email asString, ' with ', password asString, ' password'  ];
			yourself.