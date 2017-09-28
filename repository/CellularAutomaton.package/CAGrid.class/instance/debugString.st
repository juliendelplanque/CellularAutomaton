printing
debugString
	| stream |
	stream := WriteStream on: String new.
	1 to: self rows do: [ :row |
		1 to: self columns do: [ :column |
			(self cellAt: row at: column) isAlive
				ifTrue: [ stream << $x ]
				ifFalse: [ stream << $_ ].
			self columns = column
				ifFalse: [ stream space ] ].
		row = self rows
			ifFalse: [ stream cr ] ].
	^ stream contents