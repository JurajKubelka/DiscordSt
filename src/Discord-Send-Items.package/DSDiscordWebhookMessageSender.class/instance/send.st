actions
send
	webhook := self newWebhookClient.
	webhook url: self registry url.
	self items do: [ :eachItem | eachItem accept: self ].
	self halt.
	webhook send.