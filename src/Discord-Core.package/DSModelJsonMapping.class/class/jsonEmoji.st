json examples - message
jsonEmoji
	^ '{"id":"41274983523343936","name":"emoji name","roles":',
	self jsonCollectionOfRolesOne,
	',"user":', self jsonUser, 
	',"require_colons":true,"managed":false}'