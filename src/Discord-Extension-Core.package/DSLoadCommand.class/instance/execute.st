execute
execute
	self shouldDownloadDataDirectly ifTrue: [ 
		self downloadDataDirectly ].
	self shouldDownloadDataAfterLogin ifTrue: [ 
		self downloadDataAfterLogin ].	
