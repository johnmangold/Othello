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
(defun count-flips (board position color)
	;there are eight possible directions
	;dotimes loop that runs eight times with each loop checking a different direction
	(let ((count 0)			; intialize count to 1
		  (depth 0)			; intialize depth to 0
		  (pos position)	; intialize pos to position
		  (tempboard (copy-list board))
		 )
		; check each direction to see if there are any pieces that can be flipped
		(dotimes (i 8)
			(cond
				;check north - 10
				((equal i 0)
					(cond ((can-flip tempboard position color "N" 1) 
							(loop do
								(incf count)
								(setf pos (- pos 10))
							while (and (not (string= (nth pos board) "-")) (not (string= (nth pos board) "-1")) (not (string= (nth pos board) color))))
							(setf pos position)
						)
					)
				)
				
				;check northeast - 9
				((equal i 1)
					(cond ((can-flip tempboard position color "NE" 1) 
							(loop do
								(incf count)
								(setf pos (- pos 9))
							while (and (not (string= (nth pos board) "-")) (not (string= (nth pos board) "-1")) (not (string= (nth pos board) color))))
							(setf pos position)
						)
					)
				)
				
				;check east + 1
				((equal i 2)
					(cond ((can-flip tempboard position color "E" 1) 
							(loop do
								(incf count)
								(setf pos (1+ pos))
							while (and (not (string= (nth pos board) "-")) (not (string= (nth pos board) "-1")) (not (string= (nth pos board) color))))
							(setf pos position)
						)
					)
				)
				
				;chcek southeast + 11
				((equal i 3)
					(cond ((can-flip tempboard position color "SE" 1) 
							(loop do
								(incf count)
								(setf pos (+ pos 11))
							while (and (not (string= (nth pos board) "-")) (not (string= (nth pos board) "-1")) (not (string= (nth pos board) color))))
							(setf pos position)
						)
					)
				)
				
				;check south + 10
				((equal i 4)
					(cond ((can-flip tempboard position color "S" 1) 
							(loop do
								(incf count)
								(setf pos (+ pos 10))
							while (and (not (string= (nth pos board) "-")) (not (string= (nth pos board) "-1")) (not (string= (nth pos board) color))))
							(setf pos position)
						)
					)
				)
				
				;check southwest + 9
				((equal i 5)
					(cond ((can-flip tempboard position color "SW" 1) 
							(loop do
								(incf count)
								(setf pos (+ pos 9))
							while (and (not (string= (nth pos board) "-")) (not (string= (nth pos board) "-1")) (not (string= (nth pos board) color))))
							(setf pos position)
						)
					)
				)
				
				;check west - 1
				((equal i 6)
					(cond ((can-flip tempboard position color "W" 1) 
							(loop do
								(incf count)
								(setf pos (1- pos))
							while (and (not (string= (nth pos board) "-")) (not (string= (nth pos board) "-1")) (not (string= (nth pos board) color))))
							(setf pos position)
						)
					)
				)
				
				;check northwest - 11
				((equal i 7)
					(cond ((can-flip tempboard position color "NW" 1) 
							(loop do
								(incf count)
								(setf pos (- pos 11))
							while (and (not (string= (nth pos board) "-")) (not (string= (nth pos board) "-1")) (not (string= (nth pos board) color))))
							(setf pos position)
						)
					)
				)
			)
		)
		;return count here
		(return-from count-flips count)
	)
)