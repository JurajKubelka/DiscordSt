private
researchPackages: spec
	spec for: #'common' do: [
		spec
			package: #'Discord-Research' with: [ 
				spec requires: #( 
					#'Discord-Downloader'
					#'Discord-WebhookClient'
					#'Discord-Send-Items'
					#'Discord-Registry-Core' ) ]
	].