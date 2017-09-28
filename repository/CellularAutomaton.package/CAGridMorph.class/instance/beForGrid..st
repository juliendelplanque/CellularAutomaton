adapting
beForGrid: aGOLGrid
	| morphIndex |
	morphIndex := 1.
	0 to: aGOLGrid rows - 1 do: [ :row |
		0 to: aGOLGrid columns - 1 do: [ :column |
			(self submorphs at: morphIndex)
				position: self position + ((column * self cellWidth)@(row * self cellHeight));
				beForCell: (aGOLGrid cellAt: row at: column).
			morphIndex := morphIndex + 1 ] ].
	golGrid := aGOLGrid