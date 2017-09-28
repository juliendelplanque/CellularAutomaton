adapting
beForCell: aGOLCell
	aGOLCell isAlive
		ifTrue: [ self color: self aliveColor ]
		ifFalse: [ self color: self deadColor ].
	self golCell: aGOLCell