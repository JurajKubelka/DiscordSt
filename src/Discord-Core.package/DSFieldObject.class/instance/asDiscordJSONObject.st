converting
asDiscordJSONObject
	"Convert object into JSON compatible structure."
	| dictionary |
	dictionary := Dictionary new.
	self fields keysAndValuesDo: [ :key :value |
		dictionary at: key put: value asDiscordJSONObject ].
	^ dictionary