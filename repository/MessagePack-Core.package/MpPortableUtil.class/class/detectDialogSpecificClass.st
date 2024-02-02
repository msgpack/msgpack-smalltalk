factory
detectDialogSpecificClass
	"Try to detect most specific subclass for this platform"
	^ self allSubclasses detect: [ :eachSub | eachSub subclasses isEmpty ] ifNone: [ self subclasses at: 1 ]