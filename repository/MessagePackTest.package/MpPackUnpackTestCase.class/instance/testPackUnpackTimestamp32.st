testing
testPackUnpackTimestamp32
	"self debug: #testPackUnpackTimestamp32"
	| packed unpacked secondsAndNanos |
	packed := self unixEpochTimestamp messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 6.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = 0.
	self assert: secondsAndNanos last = 0.
	
	packed := (self unixEpochTimestamp + 10 seconds) messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 6.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = 10.
	self assert: secondsAndNanos last = 0.
	
	packed := self max32Timestamp - 1 seconds messagePacked: [:settings | settings formatVersion: 2013].
	self assert: packed size = 6.
	unpacked := Object fromMessagePack: packed.
	secondsAndNanos := MpPortableUtil default unixSecondsWithNanosecondsFrom: unpacked.
	self assert: secondsAndNanos first = -1.
	self assert: secondsAndNanos last = 0.
