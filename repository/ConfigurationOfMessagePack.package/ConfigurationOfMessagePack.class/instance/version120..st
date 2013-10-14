versions
version120: spec 
	<version: '1.2.0' imports: #('1.2.0-baseline') >
	
	spec for: #common do: [
		spec blessing: #beta.
		spec author: 'Masashi Umezawa'.
		spec 
			package: 'MessagePack-Core' with: 'MessagePack-Core-mu.27';
			package: 'MessagePackTest' with: 'MessagePackTest-MasashiUmezawa.9' ].
	spec for: #squeakCommon do: [
		spec 
			package: 'MessagePack-Squeak-Core' with: 'MessagePack-Squeak-Core-mu.4'].