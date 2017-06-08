mock
identifyMessageString
	^ '{"t":null,"s":null,"op":2,"d":{
    "token": "my_token",
    "properties": {
        "$os": "linux",
        "$browser": "my_library_name",
        "$device": "my_library_name",
        "$referrer": "",
        "$referring_domain": ""
    },
    "compress": true,
    "large_threshold": 250,
    "shard": [1, 10]
}}'