actions
send: aDSSendItems 
	"Send items using a Discord Webhook."
	DSDiscordWebhookMessageSender new 
		items: aDSSendItems;
		registry: self;
		send