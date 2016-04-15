(defun can-flip (board position color direction depth)
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
				((or (and (string= (nth position board) "-") (> depth 1)) (string= (nth position board) "-1") (and (string= (nth position board) color) (equal depth 1))) nil)
				((string= (nth position board) color) t)
				(t (can-flip board (- position 10) color direction (1+ depth)))
			)
		)
		
		((string= direction "NW")
			(cond
				((or (and (string= (nth position board) "-") (> depth 1)) (string= (nth position board) "-1") (and (string= (nth position board) color) (equal depth 1))) nil)
				((string= (nth position board) color) t)
				(t (can-flip board (- position 11) color direction (1+ depth)))
			)
		)
		
		((string= direction "W")
			(cond
				((or (and (string= (nth position board) "-") (> depth 1)) (string= (nth position board) "-1") (and (string= (nth position board) color) (equal depth 1))) nil)
				((string= (nth position board) color) t)
				(t (can-flip board (1- position) color direction (1+ depth)))
			)
		)
		
		((string= direction "SW")
			(cond
				((or (and (string= (nth position board) "-") (> depth 1)) (string= (nth position board) "-1") (and (string= (nth position board) color) (equal depth 1))) nil)
				((string= (nth position board) color) t)
				(t (can-flip board (+ position 9) color direction (1+ depth)))
			)
		)
		
		((string= direction "S")
			(cond
				((or (and (string= (nth position board) "-") (> depth 1)) (string= (nth position board) "-1") (and (string= (nth position board) color) (equal depth 1))) nil)
				((string= (nth position board) color) t)
				(t (can-flip board (+ position 10) color direction (1+ depth)))
			)
		)
		
		((string= direction "SE")
			(cond
				((or (and (string= (nth position board) "-") (> depth 1)) (string= (nth position board) "-1") (and (string= (nth position board) color) (equal depth 1))) nil)
				((string= (nth position board) color) t)
				(t (can-flip board (+ position 11) color direction (1+ depth)))
			)
		)
		
		((string= direction "E")
			(cond
				((or (and (string= (nth position board) "-") (> depth 1)) (string= (nth position board) "-1") (and (string= (nth position board) color) (equal depth 1))) nil)
				((string= (nth position board) color) t)
				(t (can-flip board (1+ position) color direction (1+ depth)))
			)
		)
		
		((string= direction "NE")
			(cond
				((or (and (string= (nth position board) "-") (> depth 1)) (string= (nth position board) "-1") (and (string= (nth position board) color) (equal depth 1))) nil)
				((string= (nth position board) color) t)
				(t (can-flip board (- position 9) color direction (1+ depth)))
			)
		)
	)
)