(defun temp-flip-pieces (board position color)
	;there are eight possible directions
	;dotimes loop that runs eight times with each loop checking a different direction
	(let ((depth 0)
		  (pos position)
		  (good-flip nil)
		  (board (copy-list board))
		 )
		 
		(dotimes (i 8)
			(cond
				;check north - 10
				((equal i 0)
					(if (string= color "W") (setf (nth pos board) "W") (setf (nth pos board) "B"))
					(incf depth)
					(setf pos (- pos 10))
					(when (and (not (string= (nth pos board) "-")) (not (string= (nth pos board) color)) (not (string= (nth pos board) "-1")))
						(if (string= color "W") (setf (nth pos board) "W") (setf (nth pos board) "B"))
						(incf depth)
						(setf pos (- pos 10))
					)
					
					(cond
						((string= (nth pos board) "-")
							(dotimes (i (1- depth))
								(if (string= color "W") (setf (nth pos board) "B") (setf (nth pos board) "W"))
								(setf pos (+ pos 10))
							)
							(setf pos (+ pos 10))
							(if (not good-flip) (setf (nth pos board) "-"))
						)
						(t (setf good-flip t))
					)
					(setf depth 0)
					(setf pos position)
				)
				
				;check northeast - 9
				((equal i 1)
					(if (string= color "W") (setf (nth pos board) "W") (setf (nth pos board) "B"))
					(incf depth)
					(setf pos (- pos 9))
					(when (and (not (string= (nth pos board) "-")) (not (string= (nth pos board) color)) (not (string= (nth pos board) "-1")))
						(if (string= color "W") (setf (nth pos board) "W") (setf (nth pos board) "B"))
						(incf depth)
						(setf pos (- pos 9))
					)
					
					(cond
						((string= (nth pos board) "-")
							(dotimes (i (- depth 1))
								(if (string= color "W") (setf (nth pos board) "B") (setf (nth pos board) "W"))
								(setf pos (+ pos 9))
							)
							(setf pos (+ pos 9))
							(if (not good-flip) (setf (nth pos board) "-"))
						)
						(t (setf good-flip t))
					)
					(setf depth 0)
					(setf pos position)
				)
				
				;check east + 1
				((equal i 2)
					(if (string= color "W") (setf (nth pos board) "W") (setf (nth pos board) "B"))
					(incf depth)
					(setf pos (1+ pos))
					(when (and (not (string= (nth pos board) "-")) (not (string= (nth pos board) color)) (not (string= (nth pos board) "-1")))
						(if (string= color "W") (setf (nth pos board) "W") (setf (nth pos board) "B"))
						(incf depth)
						(setf pos (1+ pos))
					)
					
					(cond
						((string= (nth pos board) "-")
							(dotimes (i (- depth 1))
								(if (string= color "W") (setf (nth pos board) "B") (setf (nth pos board) "W"))
								(setf pos (1- pos))
							)
							(setf pos (1- pos))
							(if (not good-flip) (setf (nth pos board) "-"))
						)
						(t (setf good-flip t))
					)
					(setf depth 0)
					(setf pos position)
				)
				
				;chcek southeast + 11
				((equal i 3)
					(if (string= color "W") (setf (nth pos board) "W") (setf (nth pos board) "B"))
					(incf depth)
					(setf pos (+ pos 11))
					(when (and (not (string= (nth pos board) "-")) (not (string= (nth pos board) color)) (not (string= (nth pos board) "-1")))
						(if (string= color "W") (setf (nth pos board) "W") (setf (nth pos board) "B"))
						(incf depth)
						(setf pos (+ pos 11))
					)
					
					(cond
						((string= (nth pos board) "-")
							(dotimes (i (- depth 1))
								(if (string= color "W") (setf (nth pos board) "B") (setf (nth pos board) "W"))
								(setf pos (- pos 11))
							)
							(setf pos (- pos 11))
							(if (not good-flip) (setf (nth pos board) "-"))
						)
						(t (setf good-flip t))
					)
					(setf depth 0)
					(setf pos position)
				)
				
				;check south + 10
				((equal i 4)
					(if (string= color "W") (setf (nth pos board) "W") (setf (nth pos board) "B"))
					(incf depth)
					(setf pos (+ pos 10))
					(when (and (not (string= (nth pos board) "-")) (not (string= (nth pos board) color)) (not (string= (nth pos board) "-1")))
						(if (string= color "W") (setf (nth pos board) "W") (setf (nth pos board) "B"))
						(incf depth)
						(setf pos (+ pos 10))
					)
					
					(cond
						((string= (nth pos board) "-")
							(dotimes (i (- depth 1))
								(if (string= color "W") (setf (nth pos board) "B") (setf (nth pos board) "W"))
								(setf pos (- pos 10))
							)
							(setf pos (- pos 10))
							(if (not good-flip) (setf (nth pos board) "-"))
						)
						(t (setf good-flip t))
					)
					(setf depth 0)
					(setf pos position)
				)
				
				;check southwest + 9
				((equal i 5)
					(if (string= color "W") (setf (nth pos board) "W") (setf (nth pos board) "B"))
					(incf depth)
					(setf pos (+ pos 9))
					(when (and (not (string= (nth pos board) "-")) (not (string= (nth pos board) color)) (not (string= (nth pos board) "-1")))
						(if (string= color "W") (setf (nth pos board) "W") (setf (nth pos board) "B"))
						(incf depth)
						(setf pos (+ pos 9))
					)
					
					(cond
						((string= (nth pos board) "-")
							(dotimes (i (- depth 1))
								(if (string= color "W") (setf (nth pos board) "B") (setf (nth pos board) "W"))
								(setf pos (- pos 9))
							)
							(setf pos (- pos 9))
							(if (not good-flip) (setf (nth pos board) "-"))
						)
						(t (setf good-flip t))
					)
					(setf depth 0)
					(setf pos position)
				)
				
				;check west - 1
				((equal i 6)
					(if (string= color "W") (setf (nth pos board) "W") (setf (nth pos board) "B"))
					(incf depth)
					(setf pos (1- pos))
					(when (and (not (string= (nth pos board) "-")) (not (string= (nth pos board) color)) (not (string= (nth pos board) "-1")))
						(if (string= color "W") (setf (nth pos board) "W") (setf (nth pos board) "B"))
						(incf depth)
						(setf pos (1- pos))
					)
					
					(cond
						((string= (nth pos board) "-")
							(dotimes (i (- depth 1))
								(if (string= color "W") (setf (nth pos board) "B") (setf (nth pos board) "W"))
								(setf pos (1+ pos))
							)
							(setf pos (1+ pos))
							(if (not good-flip) (setf (nth pos board) "-"))
						)
						(t (setf good-flip t))
					)
					(setf depth 0)
					(setf pos position)
				)
				
				;check northwest - 11
				((equal i 7)
					(if (string= color "W") (setf (nth pos board) "W") (setf (nth pos board) "B"))
					(incf depth)
					(setf pos (- pos 11))
					(when (and (not (string= (nth pos board) "-")) (not (string= (nth pos board) color)) (not (string= (nth pos board) "-1")))
						(if (string= color "W") (setf (nth pos board) "W") (setf (nth pos board) "B"))
						(incf depth)
						(setf pos (- pos 11))
					)
					
					(cond
						((string= (nth pos board) "-")
							(dotimes (i (- depth 1))
								(if (string= color "W") (setf (nth pos board) "B") (setf (nth pos board) "W"))
								(setf pos (+ pos 11))
							)
							(setf pos (+ pos 11))
							(if (not good-flip) (setf (nth pos board) "-"))
						)
						(t (setf good-flip t))
					)
					(setf depth 0)
					(setf pos position)
				)
			)
		)
		;return count here
		(return-from temp-flip-pieces board)
	)
)