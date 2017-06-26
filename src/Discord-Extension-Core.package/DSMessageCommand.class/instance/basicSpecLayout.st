ui
basicSpecLayout
	"Return a basic Spec layout for #basicSpecModel."
	^ SpecColumnLayout composed
		newRow: [ :row | row add: #serverLabel width: 80. row add: #serverList ] height: model class inputTextHeight;
		newRow: [ :row | row add: #channelLabel width: 80. row add: #channelList ] height: model class inputTextHeight;
		newRow: [ :row | row add: #messageText ];
		newRow: [ :row | row add: #attachmentLabel ] height: model class inputTextHeight;
		yourself.	