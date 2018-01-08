private
executeCommand
	[ | result | 
		result := self command execute.
		self onSuccess cull: result cull: self command.
	] on: Error do: [ :exception | 
		self onError cull: exception cull: self command ]