printing
printOn: aStream
	super printOn: aStream.
	aStream << $(.
	self isAlive
		ifTrue: [ aStream << 'alive' ]
		ifFalse: [ aStream << 'dead' ].
	aStream << $)