baselines
baseline120: spec 
	<version: '1.2.0-baseline'>
	spec for: #common do: [
		spec blessing: #baseline.
		spec 
			repository: 'http://smalltalkhub.com/mc/MasashiUmezawa/MessagePack/main'.
		spec 
			package: 'MessagePack-Core';
			package: 'MessagePackTest' with: [ spec requires: 'MessagePack-Core' ].
		spec
			group: 'default' with: #('Core' 'Tests');
			group: 'Core' with: #('MessagePack-Core');
			group: 'Tests' with: #('MessagePackTest'). ].
	
	spec for: #squeakCommon do: [
		spec 
			package: 'MessagePack-Squeak-Core' with: [ spec requires: 'MessagePack-Core' ]. 
		spec
			group: 'Core' with: #('MessagePack-Squeak-Core'). ].
	