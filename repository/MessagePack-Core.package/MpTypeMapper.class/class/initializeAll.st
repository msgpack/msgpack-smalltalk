class initialization
initializeAll
	"self initializeAll"
	self allSubclasses do: [:each | each initialize]