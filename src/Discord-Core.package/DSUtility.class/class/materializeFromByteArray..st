fuel
materializeFromByteArray: byteArray
	"Materialize objects using Fuel."
	^(FLMaterializer newDefault 
		showProgress;
		materializeFrom: byteArray readStream) root