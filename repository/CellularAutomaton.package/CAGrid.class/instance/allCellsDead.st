setting
allCellsDead
	self matrix indicesDo: [ :row :column |
		self matrix at: row at: column put: CACell dead ]