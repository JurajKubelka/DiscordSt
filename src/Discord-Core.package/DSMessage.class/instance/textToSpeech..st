accessing
textToSpeech: boolean
	"Set whether this was a Text-To-Speech (TTS) message"
	^ self fieldsAt: 'tts' put: boolean