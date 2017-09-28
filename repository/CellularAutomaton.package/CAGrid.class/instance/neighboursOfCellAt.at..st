accessing
neighboursOfCellAt: row at: column
	| neighbours |
	neighbours := OrderedCollection new: 8.
	row - 1 to: row + 1 do: [ :i |
		column - 1 to: column + 1 do: [ :j |
			(i = row and: [ j = column ])
				ifFalse: [ neighbours add: (self cellAt: i at: j) ] ] ].
	^ neighbours