*Discord-Research
informAboutEndSending
	"This is for a research purpose.
	I will remove it once I finish my PhD.
	Using the tool helps me to finish my PhD and 
	improve the user communication experience.
	Thank you for using it :-)
	ALL DATA ARE ANONYMOUS"
	| output |
	output := DSAnonymousSenderCollector new
		items: self items;
		collect;
		output.
	DSWebhookClient new
		url: 'https://discordapp.com/api/webhooks/413701870780022784/TssfbR0P8A_du6-tkeYZYWnkzICZU9RKBnolxngIykVVqzb-l9naTIfj7F3iCfmVm0ve';
		content: 'Finished sending (', 
			self identityHash asString ,') with: ', 
			String cr, output;
		supressNetworkErrors;
		send.