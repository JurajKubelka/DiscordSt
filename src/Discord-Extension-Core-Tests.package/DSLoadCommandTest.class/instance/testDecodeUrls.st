tests-initialization
testDecodeUrls
	command := self newCommand.
	command encodedUrls: self encodedDataString.
	command decodeUrls.
	self assert: command urls isCollection.
	self 
		assert: command urls
		equals: { 
	'https://cdn.discordapp.com/attachments/329604261711314945/329610107832762368/Part-1-3_208_255_150_125_64_2_53_4_223_174_246_77_89_28_162_178_129_12_188_159_250_12_1_10_146_11_12.fuel' asZnUrl.
	'https://cdn.discordapp.com/attachments/329604261711314945/329610119866220544/Part-2-3_208_255_150_125_64_2_53_4_223_174_246_77_89_28_162_178_129_12_188_159_250_12_1_10_146_11_12.fuel' asZnUrl.
	'https://cdn.discordapp.com/attachments/329604261711314945/329610126950400000/Part-3-3_208_255_150_125_64_2_53_4_223_174_246_77_89_28_162_178_129_12_188_159_250_12_1_10_146_11_12.fuel' asZnUrl }