announcement registration
onSendDo: oneArgBlock
	"Announce the send request.
	DSScreenshotSendRequestAnnouncement instance holds an instance of myself."
	self onAnnouncement: DSScreenshotSendRequestAnnouncement do: oneArgBlock.
	self close.