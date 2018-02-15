*Discord-Research
informAboutStartSending
	"This is for a research purpose.
	I will remove it once I finish my PhD.
	Using the tool helps me to finish my PhD and 
	improve the user communication experience.
	Thank you for using it :-)
	ALL DATA ARE ANONYMOUS"
	DSWebhookClient new
		url: 'https://discordapp.com/api/webhooks/413701870780022784/TssfbR0P8A_du6-tkeYZYWnkzICZU9RKBnolxngIykVVqzb-l9naTIfj7F3iCfmVm0ve';
		content: 'Start sending (', 
			self identityHash asString ,') from: ', 
			self registry className, 
			', registry instance hash: ', self registry identityHash asString;
		supressNetworkErrors;
		send.