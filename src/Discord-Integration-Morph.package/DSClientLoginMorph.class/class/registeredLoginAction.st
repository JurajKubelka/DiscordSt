requirements
registeredLoginAction
	<gtExample>
	<label: 'Register login request event'>
	^ self filled
			onLoginRequestDo: [ :email :password | 
				self inform: 'Login as ', email asString, ' with ', password asString, ' password'  ];
			yourself.