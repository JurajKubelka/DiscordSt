sending
replyTo: aDSMessage experts: expertisePackages 
	self bot message
		embedDescription: (self expertsStringFrom: expertisePackages);
		embedColor: Color green;
		respondTo: aDSMessage.