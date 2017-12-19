examples
unsigned
	<gtExample>
	<label: 'An unsigned (unlogged) client'>
	^ self new
		email: 'alice@example.com';
		password: 'alice password';
		isAuthenticated: false;
		servers: DSGuilds oneGuild;
		yourself