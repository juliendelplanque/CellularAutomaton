accessing
mooreNeighbourhoodIndicesOfCellAt: row at: column do: aBlock
	row - 1 to: row + 1 do: [ :i |
		|x|
		x := i.
		x = 0 ifTrue: [ x := self rows ].
		x = (self rows + 1) ifTrue: [ x := 1 ].
		column - 1 to: column + 1 do: [ :j |
			|y|
			y := j.
			y = 0 ifTrue: [ y := self columns ].
			y = (self columns + 1) ifTrue: [ y := 1 ].
			(i = row and: [ j = column ])
				ifFalse: [ aBlock value: x value: y ] ] ]