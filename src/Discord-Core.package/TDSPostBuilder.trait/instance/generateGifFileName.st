private
generateGifFileName
	"Return a unique file name with GIF extention."
	<return: #String>
	^ self generateFileNameWithExtension: '.gif'