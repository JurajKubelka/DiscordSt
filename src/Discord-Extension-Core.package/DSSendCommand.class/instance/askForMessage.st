public
askForMessage
	"Ask for a message that should be sent (with the object)."
	| model window |
	self isAuthenticated ifFalse: [ 
		"[ "self askForCredentials" ] 
			forkAt: Processor userBackgroundPriority 
			named: 'DSSendCommand: Asking for Discord credentials'".
		self waitForAnswer ].
	self isAuthenticated ifFalse: [ ^ self ].
	model := DynamicComposableModel new.
	model 
		assign: LabelModel new to: #serverLabel;
		assign: DropListModel new to: #serverList;
		assign: LabelModel new to: #channelLabel;
		assign: DropListModel new to: #channelList;
		assign: TextModel new to: #messageText;
		assign: LabelModel new to: #attachmentLabel;
		assign: TextInputFieldModel new to: #attachmentInput;
		assign: ButtonModel new to: #cancelButton;
		assign: ButtonModel new to: #sendButton.
	model serverLabel label: 'Server: '.
	model serverList 
		items: self servers; 
		displayBlock: [ :server | server name ];
		whenSelectedItemChanged: [ :server | model channelList items: server textChannels ].
	model channelLabel label: 'Channel: '.
	model channelList 
		items: self servers first textChannels;
		displayBlock: [ :itemChannel | itemChannel name ].
	model messageText 
		text: 'Write a message...'; 
		setSelection: (1 to: model messageText text size);
		autoAccept: true.
	model attachmentLabel label: 'Attachment: '.
	model cancelButton label: 'Cancel'; action: [ model delete ].
	model sendButton label: 'Send'; action: [ self storeInputs: model; send. model delete ].
	self object ifNotNil: [ :anObject | 
		model attachmentInput 
			text: anObject printString, '.fuel';
			autoAccept: true. ].
	window := model openWithSpecLayout: (SpecColumnLayout composed
		newRow: [ :row | row add: #serverLabel width: 70. row add: #serverList ] height: model class inputTextHeight;
		newRow: [ :row | row add: #channelLabel width: 70. row add: #channelList ] height: model class inputTextHeight;
		newRow: [ :row | row add: #messageText ];
		newRow: [ :row | row add: #attachmentLabel width: 70. row add: #attachmentInput ] height: model class inputTextHeight;
		newRow: [ :row | row add: #sendButton. row add: #cancelButton ] height: model class inputTextHeight;
    	yourself).
	window title: 'Send Object to Discord'.
	