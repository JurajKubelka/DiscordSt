*Discord-Send-Items
send: aDSSendItems 
	"Send items using a Discord Webhook."
	DSDiscordClientMessageSender new 
		items: aDSSendItems;
		registry: self;
		send