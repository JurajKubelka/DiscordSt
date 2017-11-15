initialization
decodeFuelId
	"Decode FUEL-ID string and initialize DSFuelId object.
	See DSPharoLinkGenerator for more details."
	fueldId := DSPharoLinkGenerator new
		decodeFuelId: self encodedFuelId.