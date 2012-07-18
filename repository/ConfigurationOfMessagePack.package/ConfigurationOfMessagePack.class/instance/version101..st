versions
version101: spec 
	<version: '1.0.1' imports: #('1.0.1-baseline') >
	
	spec for: #common do: [
		spec blessing: #release.
		spec author: 'Masashi Umezawa'.
		spec 
			package: 'MessagePack-Core' with: 'MessagePack-Core-mu.6';
			package: 'MessagePackTest' with: 'MessagePackTest-mu.2' ].
	spec for: #squeakCommon do: [
		spec 
			package: 'MessagePack-Squeak-Core' with: 'MessagePack-Squeak-Core-mu.1'].