public
askForMessageAndSend
	"Ask for a message that should be sent (with the object).
	If Send button is pressed, the message is sent."
	| window layout |
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
	self specExtensions do: [ :eachExtension | 
		model assign: eachExtension value to: eachExtension key ].
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
		text: self text; 
		setSelection: (1 to: model messageText text size);
		autoAccept: true.
	model attachmentLabel label: 'Attachment (', self fileSizeHumanString, '): '.
	model attachmentInput text: self fileName; autoAccept: true.
	model cancelButton label: 'Cancel'; action: [ model delete ].
	model sendButton label: 'Send'; action: [ self storeInputs: model; send. model delete ].
	layout := SpecColumnLayout composed
		newRow: [ :row | row add: #serverLabel width: 130. row add: #serverList ] height: model class inputTextHeight;
		newRow: [ :row | row add: #channelLabel width: 130. row add: #channelList ] height: model class inputTextHeight;
		newRow: [ :row | row add: #messageText ];
		newRow: [ :row | row add: #attachmentLabel width: 130. row add: #attachmentInput ] height: model class inputTextHeight;
		yourself.
	self specLayoutExtensions do: [ :eachExtension |
		eachExtension cull: layout cull: model cull: self ].
	layout
		newRow: [ :row | row add: #sendButton. row add: #cancelButton ] height: model class inputTextHeight;
    	yourself.
	window := model openWithSpecLayout: layout.
	window title: 'Send Object to Discord'.
	