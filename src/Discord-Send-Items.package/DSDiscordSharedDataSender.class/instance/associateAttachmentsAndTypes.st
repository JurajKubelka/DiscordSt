actions
associateAttachmentsAndTypes
	messages do: [ :eachMessage | 
		eachMessage attachments do: [ :eachAttachment |
			attachmentTypes 
				detect: [ :eachType | eachType fileName = eachAttachment filename ]
				ifFound: [ :aType | aType url: eachAttachment url ] ]
		 ].