accessing
mooreNeighbourhoodOfCellAt: row at: column
	^ Array new: 8 streamContents: [ :stream |
		self mooreNeighbourhoodIndicesOfCellAt: row at: column do: [ :r :c |
			stream << (self cellAt: r at: c) ] ]