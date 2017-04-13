*Discord-Core
asDiscordColorref
	"Convert the receiver into a colorref"
	^(self blue * 255) asInteger + ((self green * 255) asInteger << 8) + ((self red * 255) asInteger << 16)