versions
version102: spec 
	<version: '1.0.2' imports: #('1.0.1-baseline') >
	
	spec for: #common do: [
		spec blessing: #release.
		spec author: 'Masashi Umezawa'.
		spec 
			package: 'MessagePack-Core' with: 'MessagePack-Core-mu.8';
			package: 'MessagePackTest' with: 'MessagePackTest-mu.3' ].
	spec for: #squeakCommon do: [
		spec 
			package: 'MessagePack-Squeak-Core' with: 'MessagePack-Squeak-Core-mu.1'].