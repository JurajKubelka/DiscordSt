I represent a Discord Emoji Object.

See https://discordapp.com/developers/docs/resources/emoji#emoji-object

id				snowflake				emoji id
name			string					emoji name
roles			array of role object ids	roles this emoji is whitelisted to
user?			user object				user that created this emoji
require_colons	bool					whether this emoji must be wrapped in colons
managed		bool					whether this emoji is managed
							
Emoji Resource

Routes for controlling emojis do not follow the normal rate limit conventions. These routes are specifically limited on a per-guild basis to prevent abuse. This means that the quota returned by our APIs may be inaccurate, and you may encounter 429s.
