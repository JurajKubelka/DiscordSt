updating
updateChildren
	<script: 'self basic inspect'>
	self message content ifNil: [ ^ self ].
	self
		updateAuthorLogo;
		updateMessageContainer;
		updateAuthorName;
		updateContent