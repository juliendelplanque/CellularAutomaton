accessing
cellAt: row at: column
	| x y |
	x := row.
	y := column.
	x = 0
		ifTrue: [ x := self rows ].
	x = (self rows + 1)
		ifTrue: [ x := 1 ].
	y = 0
		ifTrue: [ y := self columns ].
	y = (self columns + 1)
		ifTrue: [ y := 1 ].
	^ self matrix at: x at: y