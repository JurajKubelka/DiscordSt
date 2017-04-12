baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec
			package: #'Discord-Core';
			package: #'Discord-Core-Tests' with: [
				spec requires: #( #'Discord-Core' ). ];
			package: #'Discord-WebhookClient' with: [
				spec requires: #( #'Discord-Core' ). ];
			package: #'Discord-WebhookClient-Tests' with: [
				spec requires: #( #'Discord-WebhookClient' ). ];
			group: #'default' with: #( #'core' #'webhook' #'tests' );
			group: #'core' with: #( #'Discord-Core' );
			group: #'webhook' with: #( #'Discord-WebhookClient' );
			group: #'tests' with: #( #'Discord-Core-Tests' #'Discord-WebhookClient-Tests' ).
	].