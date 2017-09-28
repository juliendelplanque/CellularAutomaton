adapting
cellsCount: count
	self removeAllMorphs.
	count timesRepeat: [ 
		self addMorph: (CACellMorph new
								height: self cellHeight;
								width: self cellWidth;
								yourself) ]