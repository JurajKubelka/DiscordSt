*Discord-Integration-Gif
recordRectangle: aRectangle to: aGIFReadWriter semaphore: aSemaphore 
	| form |
	form := Form fromDisplay: aRectangle.
	aGIFReadWriter nextPutImage: form.
	aSemaphore signal.