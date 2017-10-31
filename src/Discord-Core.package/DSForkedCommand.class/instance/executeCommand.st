private
executeCommand
	[ 
		self command execute.
		self onSuccess value.
	] on: Error do: [ "ignore" ]