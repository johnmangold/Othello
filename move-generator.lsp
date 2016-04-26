(defun move-generator (player)
	(let ( (successors nil)
			(position 11)
		 )
		(dolist (i *board*)
			(cond ((and (string= i "-") (can-flip position player "E" 1))
				(setf successors (cons position successors))
				)
			)
			(cond ((and (string= i "-") (can-flip position player "W" 1))
				(setf successors (cons position successors))
				)
			)
			(cond ((and (string= i "-") (can-flip position player "N" 1))
				(setf successors (cons position successors))
				)
			)
			(cond ((and (string= i "-") (can-flip position player "S" 1))
				(setf successors (cons position successors))
				)
			)
			(cond ((and (string= i "-") (can-flip position player "SE" 1))
				(setf successors (cons position successors))
				)
			)
			(cond ((and (string= i "-") (can-flip position player "SW" 1))
				(setf successors (cons position successors))
				)
			)
			(cond ((and (string= i "-") (can-flip position player "NW" 1))
				(setf successors (cons position successors))
				)
			)
			(cond ((and (string= i "-") (can-flip position player "NE" 1))
				(setf successors (cons position successors))
				)
			)
			(incf position)
		)
		(return-from move-generator successors)
	)
)