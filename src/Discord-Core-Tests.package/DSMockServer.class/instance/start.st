actions
start
	"It starts ZnServer on a free port. 
	The port is available at port instance variable.
	You can use delegate 
		map: '/your/path' 
		to: [ :request :response | serverRequests add: request. response entity: (ZnEntity text: 'OK') ].
	You can use serverRequests to store information necessary for testing."
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	delegate := ZnDispatcherDelegate new.
	server delegate: delegate.
	serverRequests := OrderedCollection new.
	semaphore := Semaphore new.