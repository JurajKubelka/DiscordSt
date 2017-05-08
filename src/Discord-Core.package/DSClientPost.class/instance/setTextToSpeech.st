accessing
setTextToSpeech
	"Indicate that this is a Text-to-Speech (TTS) message."
	^ self fieldsAt: 'tts' put: true