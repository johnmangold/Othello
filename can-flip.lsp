(defun can-flip (board position color direction depth)
	;need a check to make sure it doesn't go off the board.
	;not sure this recursion works.  might run forever.
	;also need to add depth check so you can't place next to your own piece.
	(cond
		((string= color "white")
			(setf color "W")
		)
		
		((string= color "black")
			(setf color "B")
		)
	)
	
	;n
	(cond
		((string= direction "N")
			(cond
				((or (string= (nth position board) "-") (string= (nth position board) "-1") (and (string= (nth position board) color) (equal depth 1))) nil)
				((string= (nth position board) color) t)
				(t (can-flip board (- position 10) color direction (1+ depth)))
			)
		)
		
		((string= direction "NW")
			(cond
				((or (string= (nth position board) "-") (string= (nth position board) "-1") (and (string= (nth position board) color) (equal depth 1))) nil)
				((string= (nth position board) color) t)
				(t (can-flip board (- position 11) color direction))
			)
		)
		
		((string= direction "W")
			(cond
				((or (string= (nth position board) "-") (string= (nth position board) "-1") (and (string= (nth position board) color) (equal depth 1))) nil)
				((string= (nth position board) color) t)
				(t (can-flip board (1- position) color direction))
			)
		)
		
		((string= direction "SW")
			(cond
				((or (string= (nth position board) "-") (string= (nth position board) "-1") (and (string= (nth position board) color) (equal depth 1))) nil)
				((string= (nth position board) color) t)
				(t (can-flip board (+ position 9) color direction))
			)
		)
		
		((string= direction "S")
			(cond
				((or (string= (nth position board) "-") (string= (nth position board) "-1") (and (string= (nth position board) color) (equal depth 1))) nil)
				((string= (nth position board) color) t)
				(t (can-flip board (+ position 10) color direction))
			)
		)
		
		((string= direction "SE")
			(cond
				((or (string= (nth position board) "-") (string= (nth position board) "-1") (and (string= (nth position board) color) (equal depth 1))) nil)
				((string= (nth position board) color) t)
				(t (can-flip board (+ position 11) color direction))
			)
		)
		
		((string= direction "E")
			(cond
				((or (string= (nth position board) "-") (string= (nth position board) "-1") (and (string= (nth position board) color) (equal depth 1))) nil)
				((string= (nth position board) color) t)
				(t (can-flip board (1+ position) color direction))
			)
		)
		
		((string= direction "NE")
			(cond
				((or (string= (nth position board) "-") (string= (nth position board) "-1") (and (string= (nth position board) color) (equal depth 1))) nil)
				((string= (nth position board) color) t)
				(t (can-flip board (- position 9) color direction))
			)
		)
	)
	
	;not sure it's necessary since the checks we have are:
	;blank space, same color, off board, or default to check further
)