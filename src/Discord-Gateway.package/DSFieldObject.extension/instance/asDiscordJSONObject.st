*Discord-Gateway
asDiscordJSONObject
	"Convert object into JSON compatible structure."
	| dictionary |
	dictionary := Dictionary new.
	self fieldsDictionary keysAndValuesDo: [ :key :value |
		dictionary at: key put: value asDiscordJSONObject ].
	^ dictionary