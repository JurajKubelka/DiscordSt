tests
testExtractUrl
	| url result |
	url := '[Download to Pharo](https://pharo-link.herokuapp.com/?fuel=Object&data=H4sIAAAAAAAAAA3Byw3DIAwA0ImI%2BQbTaxbIoQs4QKFSAii4Usdv36vMYz4AYmpLes/Y70Rj%0DLLFfQMwU65UbT9AYFHqlFTr7H4wEg9JL47STazAYUFvY6WahxDN/WWyVWsunePVyfMoPcxMQ%0DHGcAAAA%3D&id=273GA1R5Z40A-273GA1R5Z40A-JC4D0GPCR3C5-OZIHFT-273GA1R5Z40A-2W4K4X8YD8UA)'.
	command := self classToTest new.
	result := command extractUrl: url.
	self assert: result equals: 'https://pharo-link.herokuapp.com/?fuel=Object&data=H4sIAAAAAAAAAA3Byw3DIAwA0ImI%2BQbTaxbIoQs4QKFSAii4Usdv36vMYz4AYmpLes/Y70Rj%0DLLFfQMwU65UbT9AYFHqlFTr7H4wEg9JL47STazAYUFvY6WahxDN/WWyVWsunePVyfMoPcxMQ%0DHGcAAAA%3D&id=273GA1R5Z40A-273GA1R5Z40A-JC4D0GPCR3C5-OZIHFT-273GA1R5Z40A-2W4K4X8YD8UA' asZnUrl.
	