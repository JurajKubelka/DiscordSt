I represent a Discord user. 
See https://discordapp.com/developers/docs/resources/user#user-object

Field	Type	Description	Required OAuth2 Scope
id	snowflake	the user's id	identify
username	string	the user's username, not unique across the platform	identify
discriminator	string	the user's 4-digit discord-tag	identify
avatar	string	the user's avatar hash	identify
bot?	bool	whether the user belongs to an OAuth2 application	identify
mfa_enabled?	bool	whether the user has two factor enabled on their account	identify
verified?	bool	whether the email on this account has been verified	email
email?	string	the user's email	email
