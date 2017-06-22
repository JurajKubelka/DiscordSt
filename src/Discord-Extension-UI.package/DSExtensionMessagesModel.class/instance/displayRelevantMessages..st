private
displayRelevantMessages: aDSMessage 
	DSExtensionRelevantMessagesModel new
		messages: listModel getList;
		message: aDSMessage;
		openWithSpec.