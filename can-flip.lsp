#|
                  ***** can-flip.lsp *****

Checks if a flip can be made in a certain direction.

Author: John Mangold
Class:	SDSM&T CSC447/547 Artificial Intelligence
Date: 	Spring 2016

Usage:    (can-flip board position color direction depth)
			where board is the current position of the board
		   where position is the position that the player wishes to place their piece
           where color is the color of the player how is about to place a piece
		   where the direction is the direction on the board to be checked
		   where depth is the depth of the search

Returns:  (t)
           returns true if the postion can flip pieces
		  (nil)
		   returns nil if the position can not flip pieces
|#
(defun can-flip (board position color direction depth)
	; change the color from word form to letter form
	(cond
		; if color is white set color to W
		((string= color "white")
			(setf color "W")
		)
		; if color is black set color to B
		((string= color "black")
			(setf color "B")
		)
	)
	
	; check which direction we want to check for flips
	(cond
		; Check North
		((string= direction "N")
			(cond
				((or (and (string= (nth position board) "-") (> depth 1))
					(string= (nth position board) "-1")
					(and (not (string= (nth position board) "-")) (equal depth 1)) (and (string= (nth position board) "W") (equal depth 1))
					(and (string= (nth position board) color) (equal depth 1))
					(and (string= (nth position board) color) (equal depth 2))) nil)
				
				((string= (nth position board) color) t)
				(t (can-flip board (- position 10) color direction (1+ depth)))
			)
		)
		; Check North-West
		((string= direction "NW")
			(cond
				((or (and (string= (nth position board) "-") (> depth 1))
					(string= (nth position board) "-1")
					(or (and (string= (nth position board) "B") (equal depth 1)) (and (string= (nth position board) "W") (equal depth 1)))
					(and (string= (nth position board) color) (equal depth 1)) 
					(and (string= (nth position board) color) (equal depth 2))
				) nil)
				
				((string= (nth position board) color) t)
				(t (can-flip board (- position 11) color direction (1+ depth)))
			)
		)
		; Check West
		((string= direction "W")
			(cond
				((or (and (string= (nth position board) "-") (> depth 1))
					(string= (nth position board) "-1")
					(or (and (string= (nth position board) "B") (equal depth 1)) (and (string= (nth position board) "W") (equal depth 1)))
					(and (string= (nth position board) color) (equal depth 1))
					(and (string= (nth position board) color) (equal depth 2))) nil)
				
				((string= (nth position board) color) t)
				(t (can-flip board (1- position) color direction (1+ depth)))
			)
		)
		; Check South-West
		((string= direction "SW")
			(cond
				((or (and (string= (nth position board) "-") (> depth 1)) 
					 (string= (nth position board) "-1") 
					 (or (and (string= (nth position board) "B") (equal depth 1)) (and (string= (nth position board) "W") (equal depth 1)))
					 (and (string= (nth position board) color) (equal depth 1)) 
					 (and (string= (nth position board) color) (equal depth 2))) nil)
					 
				 ((string= (nth position board) color) t)
				 (t (can-flip board (+ position 9) color direction (1+ depth)))
			)
		)
		; Check South
		((string= direction "S")
			(cond
				((or (and (string= (nth position board) "-") (> depth 1))
					(string= (nth position board) "-1")
					(or (and (string= (nth position board) "B") (equal depth 1)) (and (string= (nth position board) "W") (equal depth 1)))
					(and (string= (nth position board) color) (equal depth 1))
					(and (string= (nth position board) color) (equal depth 2))) nil)
				
				((string= (nth position board) color) t)
				(t (can-flip board (+ position 10) color direction (1+ depth)))
			)
		)
		; Check South-East
		((string= direction "SE")
			(cond
				((or (and (string= (nth position board) "-") (> depth 1))
					(string= (nth position board) "-1")
					(or (and (string= (nth position board) "B") (equal depth 1)) (and (string= (nth position board) "W") (equal depth 1)))
					(and (string= (nth position board) color) (equal depth 1)) 
					(and (string= (nth position board) color) (equal depth 2))) nil)
				
				((string= (nth position board) color) t)
				(t (can-flip board (+ position 11) color direction (1+ depth)))
			)
		)
		; Check East
		((string= direction "E")
			(cond
				((or (and (string= (nth position board) "-") (> depth 1))
					(string= (nth position board) "-1") 
					(or (and (string= (nth position board) "B") (equal depth 1)) (and (string= (nth position board) "W") (equal depth 1)))
					(and (string= (nth position board) color) (equal depth 1)) 
					(and (string= (nth position board) color) (equal depth 2))) nil)
				
				((string= (nth position board) color) t)
				(t (can-flip board (1+ position) color direction (1+ depth)))
			)
		)
		; Check North-East
		((string= direction "NE")
			(cond
				((or (and (string= (nth position board) "-") 
					(> depth 1)) (string= (nth position board) "-1")
					(or (and (string= (nth position board) "B") (equal depth 1)) (and (string= (nth position board) "W") (equal depth 1)))
					(and (string= (nth position board) color) (equal depth 1))
					(and (string= (nth position board) color) (equal depth 2))) nil)
				
				((string= (nth position board) color) t)
				(t (can-flip board (- position 9) color direction (1+ depth)))
			)
		)
	)
)