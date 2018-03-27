singleton
resetToken
	<script>
	default 
		ifNil: [ ^ self ]
		ifNotNil: [ :aClient | 
			aClient token: '' ].