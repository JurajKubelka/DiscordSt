examples
recordForFiveSeconds
	<gtExample>
	<label: 'Record a user defined screen part for five seconds'>
	^ self new
		whenRectangleRequestedDo: [ :announcement | 
			announcement rectangle: World bounds ];
		whenRecordingFinishedDo: [ :announcement |
			self inform: 'Recording finished' ];
		whenRecordingInitiatedDo: [ :announcement | 
			[ 	
				self inform: 'Recording now...'.
				5 seconds wait. 
				announcement recorder stop 
			] forkAt: Processor userSchedulingPriority + 1 named: 'Screen recording example' ];
		start.