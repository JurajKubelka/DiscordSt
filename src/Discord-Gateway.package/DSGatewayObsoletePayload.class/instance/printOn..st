printing
printOn: aStream
	aStream << self payloadName << ': '.
	DSJSONApiWriter toString: self asDiscordJSONObject onStream: aStream