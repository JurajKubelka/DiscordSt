tests
testGenerate
	| urlString |
	urlString := self instanceToTest 
		channel: (DSGuildTextChannel new 
			id: self bigNumber;
			guildId: self bigNumberTwo;
			yourself);
		previousMessages: (Array with: (DSMessage new 
			id: self bigNumber; 
			channelId: self bigNumberTwo;
			attachments: (Array with: (DSAttachment new
				id: self bigNumber;
				url: self anyString;
				yourself));
			yourself));
		fuelValue: self anyStringTwo;
		generate.
	self assert: urlString notNil.
	self 
		assert: (urlString includesSubstring: '[Download to Pharo](https://pharo-link.herokuapp.com/?fuel=any%20string%20two&data=H4sIAAAAAAAAAEvMq1QoLinKzEsHACP90BoKAAAA&id=IML2T0KLTC2PT5CB-34MRV7CJVKE8-').
	self 
		assert: (urlString includesSubstring: '-IML2T0KLTC2PT5CB-34MRV7CJVKE8)').
	self assert: ('-' split: urlString) size equals: 7.