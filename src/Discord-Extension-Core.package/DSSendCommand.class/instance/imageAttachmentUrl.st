accessing
imageAttachmentUrl
	"Return image url using Discord attachment:// notation.
	Thanks to this the image (screenshot) can be mentioned in a Discord Embed Object."
	^ 'attachment://', self imageName