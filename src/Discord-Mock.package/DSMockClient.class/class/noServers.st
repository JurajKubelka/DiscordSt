examples
noServers
	<gtExample>
	<label: 'A client without any server'>
	^ self new
		email: 'alice@example.com';
		password: 'alice password';
		isAuthenticated: true;
		yourself