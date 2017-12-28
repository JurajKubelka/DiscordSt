private
executeCommand
	[ 
		self command execute.
		self onSuccess cull: self command.
	] on: Error do: [ "ignore" ]