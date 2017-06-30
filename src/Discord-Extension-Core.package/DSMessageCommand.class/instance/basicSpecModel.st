ui
basicSpecModel
	"Return model that includes drop lists for server and channel, 
	message text, and info about attachment size."
	model := DynamicComposableModel new
		assign: LabelModel new to: #serverLabel;
		assign: DropListModel new to: #serverList;
		assign: LabelModel new to: #channelLabel;
		assign: DropListModel new to: #channelList;
		assign: TextModel new to: #messageText;
		assign: LabelModel new to: #messageLength;
		assign: LabelModel new to: #attachmentLabel.
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
		whenTextChanged: [ 
			model messageLength 
				label: (self class messageLenghtTextFor: model messageText text);
				color: (model messageText text size > DSConstants maxMessageLenght
					ifTrue: [ Color red ]
					ifFalse: [ model messageLength defaultColor ]) ];
		text: self text;
		setSelection: (1 to: model messageText text size);
		autoAccept: true.
	model attachmentLabel label: 'Attachment size: ', self fileSizeHumanString.
	model layout: self basicSpecLayout.
	^ model