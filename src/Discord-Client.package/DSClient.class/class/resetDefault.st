singleton
resetDefault
	<script>
	default 
		ifNil: [ ^ self ]
		ifNotNil: [ :aClient | 
			default := nil.
			aClient disconnect; logout ].