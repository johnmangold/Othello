(defun count-flips (position color direction depth count)
	(print count)
	(cond
		((string= direction "N")
			(cond
				((or (and (string= (nth position *board*) "-") (> depth 1)) (string= (nth position *board*) "-1") (and (string= (nth position *board*) color) (equal depth 1)) (and (string= (nth position *board*) color) (equal depth 2))) nil)
				((string= (nth position *board*) color) t)
				(t 
					(count-flips (- position 10) color direction (1+ depth) (incf count))
				)
			)
		)
		
		((string= direction "NW")
			(cond
				((or (and (string= (nth position *board*) "-") (> depth 1)) (string= (nth position *board*) "-1") (and (string= (nth position *board*) color) (equal depth 1)) (and (string= (nth position *board*) color) (equal depth 2))) nil)
				((string= (nth position *board*) color) t)
				(t 
					(count-flips (- position 11) color direction (1+ depth) (incf count))
				)
			)
		)
		
		((string= direction "W")
			(cond
				((or (and (string= (nth position *board*) "-") (> depth 1)) (string= (nth position *board*) "-1") (and (string= (nth position *board*) color) (equal depth 1)) (and (string= (nth position *board*) color) (equal depth 2))) nil)
				((string= (nth position *board*) color) t)
				(t 
					(count-flips (1- position) color direction (1+ depth) (incf count))
				)
			)
		)
		
		((string= direction "SW")
			(cond
				((or (and (string= (nth position *board*) "-") (> depth 1)) (string= (nth position *board*) "-1") (and (string= (nth position *board*) color) (equal depth 1)) (and (string= (nth position *board*) color) (equal depth 2))) nil)
				((string= (nth position *board*) color) t)
				(t 
					(count-flips (+ position 9) color direction (1+ depth) (incf count))
				)
			)
		)
		
		((string= direction "S")
			(cond
				((or (and (string= (nth position *board*) "-") (> depth 1)) (string= (nth position *board*) "-1") (and (string= (nth position *board*) color) (equal depth 1)) (and (string= (nth position *board*) color) (equal depth 2))) nil)
				((string= (nth position *board*) color) t)
				(t 
					(count-flips (+ position 10) color direction (1+ depth) (incf count))
				)
			)
		)
		
		((string= direction "SE")
			(cond
				((or (and (string= (nth position *board*) "-") (> depth 1)) (string= (nth position *board*) "-1") (and (string= (nth position *board*) color) (equal depth 1)) (and (string= (nth position *board*) color) (equal depth 2))) nil)
				((string= (nth position *board*) color) t)
				(t 
					(count-flips (+ position 11) color direction (1+ depth) (incf count))
				)
			)
		)
		
		((string= direction "E")
			(cond
				((or (and (string= (nth position *board*) "-") (> depth 1)) (string= (nth position *board*) "-1") (and (string= (nth position *board*) color) (equal depth 1)) (and (string= (nth position *board*) color) (equal depth 2))) nil)
				((string= (nth position *board*) color) t)
				(t 
					(count-flips (1+ position) color direction (1+ depth) (incf count))
				)
			)
		)
		
		((string= direction "NE")
			(cond
				((or (and (string= (nth position *board*) "-") (> depth 1)) (string= (nth position *board*) "-1") (and (string= (nth position *board*) color) (equal depth 1)) (and (string= (nth position *board*) color) (equal depth 2))) nil)
				((string= (nth position *board*) color) t)
				(t 
					(count-flips (- position 9) color direction (1+ depth) (incf count))
				)
			)
		)
	)
	(print count)
	(return-from count-flips count)
)