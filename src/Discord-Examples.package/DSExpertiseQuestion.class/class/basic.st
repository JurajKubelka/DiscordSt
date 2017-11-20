examples
basic
	<gtExample>
	<label: 'Register yourself for messages and wait for questions.'>
	^ DSBot new
		token: 'BOT-TOKEN';
		with: [ :bot | | answer |
			answer := DSExpertiseAnswer new bot: bot; yourself.
			bot announcer 
				when: DSGatewayMessageAnnouncement 
				do: [ :ann | 
					DSExpertiseQuestion 
						message: ann message
						answer: answer ] ];
		yourself";
		connect."