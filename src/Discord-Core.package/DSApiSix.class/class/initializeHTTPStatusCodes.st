initialization
initializeHTTPStatusCodes
	<script>
	"ZnStatusLine code: 200"
	ZnConstants httpStatusCodes
		at: 429 put: 'Too Many Requests';
		yourself.
		