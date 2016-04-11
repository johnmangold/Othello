(defun valid-move (board position color)
	(let ((spot (1- (+ (* (1- (cadr position)) 8) (car position)))))
		;check left
		(cond
			((string= color "white")
				(when (string= (nth (1- spot) board) "B")
					;direction west
					;check for flipability
					;flip pieces 
				)
			)
			
			((string= color "black")
				(when (string= (nth (1- spot) board) "W")
					;direction west
					;check for flipability
					;flip pieces
				)
			)
		)
		
		;check diagonal up left
		(cond
			((string= color "white")
				(when (string= (nth (- spot 9) board) "B")
					;direction northwest
					;check for flipability
					;flip pieces
				)
			)
			
			((string= color "black")
				(when (string= (nth (- spot 9) board) "W")
					;direction northwest
					;check for flipability
					;flip pieces
				)
			)
		)
		
		;check up
		(cond
			((string= color "white")
				(when (string= (nth (- spot 8) board) "B")
					;north
					;check for flipability
					;flip pieces
				)
			)
			
			((string= color "black")
				(when (string= (nth (- spot 8) board) "W")
					;north
					;check for flipability
					;flip pieces
				)
			)
		)
		
		;check diagonal up right
		(cond
			((string= color "white")
				(when (string= (nth (- spot 7) board) "B")
					;northeast
					;check for flipability
					;flip pieces
				)
			)
			
			((string= color "black")
				(when (string= (nth (- spot 7) board) "W")
					;northeast
					;check for flipability
					;flip pieces
				)
			)
		)
		
		;check right
		(cond
			((string= color "white")
				(when (string= (nth (1+ spot) board) "B")
					;east
					;check for flipability
					;flip pieces
				)
			)
			
			((string= color "black")
				(when (string= (nth (1+ spot) board) "W")
					;east
					;check for flipability
					;flip pieces
				)
			)
		)
		
		;check diagonal down right
		(cond
			((string= color "white")
				(when (string= (nth (+ spot 9) board) "B")
					;southeast
					;check for flipability
					;flip pieces
				)
			)
			
			((string= color "black")
				(when (string= (nth (+ spot 9) board) "W")
					;southeast
					;check for flipability
					;flip pieces
				)
			)
		)
		
		;check down
		(cond
			((string= color "white")
				(when (string= (nth (+ spot 8) board) "B")
					;south
					;check for flipability
					;flip pieces
				)
			)
			
			((string= color "black")
				(when (string= (nth (+ spot 8) board) "W")
					;south
					;check for flipability
					;flip pieces
				)
			)
		)
		
		;check diagonal down left
		(cond
			((string= color "white")
				(when (string= (nth (+ spot 7) board) "B")
					;southwest
					;check for flipability
					;flip pieces
				)
			)
			
			((string= color "black")
				(when (string= (nth (+ spot 7) board) "W")
					;southwest
					;check for flipability
					;flip pieces
				)
			)
		)
	)
)