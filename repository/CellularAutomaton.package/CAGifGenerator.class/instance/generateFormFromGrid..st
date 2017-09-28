private
generateFormFromGrid: aCAGrid
	| form |
	form := Form extent: (aCAGrid columns * self cellExtent x) @ (aCAGrid rows * self cellExtent y) depth: 32.
	1 to: aCAGrid columns do: [ :column |
		1 to: aCAGrid rows do: [ :row |
			|color|
			color := self colorForState: (aCAGrid cellAt: row at: column) state.
			"Fill pixels corresponding to the cell with the color."
			(column * self cellExtent x) to: ((column * self cellExtent x) + self cellExtent x) do: [ :pixColumn |
				(row * self cellExtent y) to: ((row * self cellExtent y) + self cellExtent y) do: [ :pixRow |
					form colorAt: pixColumn @ pixRow put: color ] ] ] ].
	^ form