examples
authenticated
	<gtExample>
	<label: 'An authenticated client with a server'>
	^ self new
		email: 'alice@example.com';
		password: 'alice password';
		isAuthenticated: true;
		servers: DSGuilds oneGuild;
		directChannels: DSChannels oneDirectChannel;
		yourself