event handling
mouseUp: evt
	golCell isAlive
		ifTrue: [ golCell beDead ]
		ifFalse: [ golCell beAlive ].
	self beForCell: golCell