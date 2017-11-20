sending
replyNoExpertsTo: aDSMessage 
	self bot message
		embedDescription: 'Sorry, I do not know.';
		embedColor: Color gray;
		respondTo: aDSMessage.