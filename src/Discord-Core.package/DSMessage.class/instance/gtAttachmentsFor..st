accessing
gtAttachmentsFor: aView
	<gtView>
	self hasAttachments ifFalse: [ ^ aView empty ].
	^ aView list
		title: 'Attachments';
		priority: 3;
		items: [ self attachments ]