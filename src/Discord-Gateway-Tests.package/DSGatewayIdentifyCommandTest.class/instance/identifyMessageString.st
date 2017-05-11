mock
identifyMessageString
	^ '{
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
}'