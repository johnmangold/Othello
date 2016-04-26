#|
                  ***** count-flips.lsp *****

Counts the number of pieces flipped.

Author: Cassidy Vollmer and John Mangold
Class:	SDSM&T CSC447/547 Artificial Intelligence
Date: 	Spring 2016

Usage:    (count-flips position color)
          where position is the position where the piece will be placed
		  where color is the color of the player

Returns:  (count)
          where count is the number of flips that would happen is the player 
		  places their peice in the given position
|#
(defun count-flips (position color)
	;there are eight possible directions
	;dotimes loop that runs eight times with each loop checking a different direction
	(let ((count 1)			; intialize count to 1
		  (depth 0)			; intialize depth to 0
		  (pos position)	; intialize pos to position
		 )
		; check each direction to see if there are any pieces that can be flipped
		(dotimes (i 8)
			(cond
				;check north
				((equal i 0)
					(setf pos (- pos 10))
					(when (and (not (string= (nth pos *board*) "-")) (not (string= (nth pos *board*) color)) (not (string= (nth pos *board*) "-1")))
						(incf count)
						(incf depth)
						(setf pos (- pos 10))
					)
					(if (string= (nth pos *board*) "-") (setf count (- count depth)))
					(setf depth 0)
					(setf pos position)
				)
				
				;check northeast
				((equal i 1)
					(setf pos (- pos 9))
					(when (and (not (string= (nth pos *board*) "-")) (not (string= (nth pos *board*) color)) (not (string= (nth pos *board*) "-1")))
						(incf count)
						(incf depth)
						(setf pos (- pos 9))
					)
					(if (string= (nth pos *board*) "-") (setf count (- count depth)))
					(setf depth 0)
					(setf pos position)
				)
				
				;check east
				((equal i 2)
					(setf pos (1+ pos))
					(when (and (not (string= (nth pos *board*) "-")) (not (string= (nth pos *board*) color)) (not (string= (nth pos *board*) "-1")))
						(incf count)
						(incf depth)
						(setf pos (1+ pos))
					)
					(if (string= (nth pos *board*) "-") (setf count (- count depth)))
					(setf depth 0)
					(setf pos position)
				)
				
				;chcek southeast
				((equal i 3)
					(setf pos (+ pos 11))
					(when (and (not (string= (nth pos *board*) "-")) (not (string= (nth pos *board*) color)) (not (string= (nth pos *board*) "-1")))
						(incf count)
						(incf depth)
						(setf pos (+ pos 11))
					)
					(if (string= (nth pos *board*) "-") (setf count (- count depth)))
					(setf depth 0)
					(setf pos position)
				)
				
				;check south
				((equal i 4)
					(setf pos (+ pos 10))
					(when (and (not (string= (nth pos *board*) "-")) (not (string= (nth pos *board*) color)) (not (string= (nth pos *board*) "-1")))
						(incf count)
						(incf depth)
						(setf pos (+ pos 10))
					)
					(if (string= (nth pos *board*) "-") (setf count (- count depth)))
					(setf depth 0)
					(setf pos position)
				)
				
				;check southwest
				((equal i 5)
					(setf pos (+ pos 9))
					(when (and (not (string= (nth pos *board*) "-")) (not (string= (nth pos *board*) color)) (not (string= (nth pos *board*) "-1")))
						(incf count)
						(incf depth)
						(setf pos (+ pos 9))
					)
					(if (string= (nth pos *board*) "-") (setf count (- count depth)))
					(setf depth 0)
					(setf pos position)
				)
				
				;check west
				((equal i 6)
					(setf pos (1- pos))
					(when (and (not (string= (nth pos *board*) "-")) (not (string= (nth pos *board*) color)) (not (string= (nth pos *board*) "-1")))
						(incf count)
						(incf depth)
						(setf pos (1- pos))
					)
					(if (string= (nth pos *board*) "-") (setf count (- count depth)))
					(setf depth 0)
					(setf pos position)
				)
				
				;check northwest
				((equal i 7)
					(setf pos (- pos 11))
					(when (and (not (string= (nth pos *board*) "-")) (not (string= (nth pos *board*) color)) (not (string= (nth pos *board*) "-1")))
						(incf count)
						(incf depth)
						(setf pos (- pos 11))
					)
					(if (string= (nth pos *board*) "-") (setf count (- count depth)))
					(setf depth 0)
					(setf pos position)
				)
			)
		)
		;return count here
		(return-from count-flips count)
	)
)