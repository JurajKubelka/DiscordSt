private
catchDiscordErrorDuring: aBlock
	^ aBlock
		on: DSDiscordError 
		do: [ :exception | self handleError: exception ]