instance creation
newMessageReceiverInitialized
	^ self newMessageReceiver
		announcer: self newAnnouncer;
		session: (DSSession new token: self anyString);
		heartbeatProcess: DSGatewayHeartbeatProcess new;
		yourself.