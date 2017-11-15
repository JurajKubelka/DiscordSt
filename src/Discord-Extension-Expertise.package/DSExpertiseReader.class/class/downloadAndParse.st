protocol
downloadAndParse
	"Return expertise data"

	<script: 'self downloadAndParse inspect'>
	<return: #DSExpertise>
	^ ZnEasy client
		url: self defaultUrl;
		contentReader: [ :content | self parseExpertiseOn: content ];
		get