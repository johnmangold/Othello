#|
                  ***** flip-pieces.lsp *****

Flip the pieces on the board.

Author: John Mangold
Class:	SDSM&T CSC447/547 Artificial Intelligence
Date: 	Spring 2016

Usage:    (flip-pieces position color direction depth)
		   where position is the position that the player wishes to place their piece
           where color is the color of the player who is about to place a piece
		   where direction is the drection to flip pieces
		   where depth is the depth of the search

Returns:  none
|#
(defun flip-pieces (position color direction depth)
	; change the color from word form to letter form
	(cond
		; if the color is white set color to W
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
		; check North
		((string= direction "N")
			(cond
				((or (and (string= (nth position *board*) "-") (> depth 1)) (string= (nth position *board*) "-1") (and (string= (nth position *board*) color) (equal depth 1))) nil)
				((string= (nth position *board*) color) t)
				(t 
					; flip piece and continue north
					(setf (nth position *board*) color)
					(flip-pieces (- position 10) color direction (1+ depth))
				)
			)
		)
		; check north-west
		((string= direction "NW")
			(cond
				((or (and (string= (nth position *board*) "-") (> depth 1)) (string= (nth position *board*) "-1") (and (string= (nth position *board*) color) (equal depth 1))) nil)
				((string= (nth position *board*) color) t)
				(t 
					; flip piece and continue north-west
					(setf (nth position *board*) color)
					(flip-pieces (- position 11) color direction (1+ depth))
				)
			)
		)
		; check west
		((string= direction "W")
			(cond
				((or (and (string= (nth position *board*) "-") (> depth 1)) (string= (nth position *board*) "-1") (and (string= (nth position *board*) color) (equal depth 1))) nil)
				((string= (nth position *board*) color) t)
				(t 
					; flip piece and continue west
					(setf (nth position *board*) color)
					(flip-pieces (1- position) color direction (1+ depth))
				)
			)
		)
		; check south-west
		((string= direction "SW")
			(cond
				((or (and (string= (nth position *board*) "-") (> depth 1)) (string= (nth position *board*) "-1") (and (string= (nth position *board*) color) (equal depth 1))) nil)
				((string= (nth position *board*) color) t)
				(t 
					; flip piece and continue south-west
					(setf (nth position *board*) color)
					(flip-pieces (+ position 9) color direction (1+ depth))
				)
			)
		)
		; check south
		((string= direction "S")
			(cond
				((or (and (string= (nth position *board*) "-") (> depth 1)) (string= (nth position *board*) "-1") (and (string= (nth position *board*) color) (equal depth 1))) nil)
				((string= (nth position *board*) color) t)
				(t 
					; flip piece and continue south
					(setf (nth position *board*) color)
					(flip-pieces (+ position 10) color direction (1+ depth))
				)
			)
		)
		; check south-west
		((string= direction "SE")
			(cond
				((or (and (string= (nth position *board*) "-") (> depth 1)) (string= (nth position *board*) "-1") (and (string= (nth position *board*) color) (equal depth 1))) nil)
				((string= (nth position *board*) color) t)
				(t 
					; flip piece and continue south-west
					(setf (nth position *board*) color)
					(flip-pieces (+ position 11) color direction (1+ depth))
				)
			)
		)
		; check east
		((string= direction "E")
			(cond
				((or (and (string= (nth position *board*) "-") (> depth 1)) (string= (nth position *board*) "-1") (and (string= (nth position *board*) color) (equal depth 1))) nil)
				((string= (nth position *board*) color) t)
				(t 
					; flip piece and continue east
					(setf (nth position *board*) color)
					(flip-pieces (1+ position) color direction (1+ depth))
				)
			)
		)
		; check north-east
		((string= direction "NE")
			(cond
				((or (and (string= (nth position *board*) "-") (> depth 1)) (string= (nth position *board*) "-1") (and (string= (nth position *board*) color) (equal depth 1))) nil)
				((string= (nth position *board*) color) t)
				(t 
					; flip piece and continue north-east
					(setf (nth position *board*) color)
					(flip-pieces (- position 9) color direction (1+ depth))
				)
			)
		)
	)
)