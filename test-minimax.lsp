(defun minimax (board position depth player check)

    ; if we have searched deep enough, or there are no successors,
    ; return position evaluation and nil for the path
	(cond
		((and (equal (mod check 2) 0) (equal check 0))
		
		)
	
		((equal (mod check 2) 0)
			(if (string= player "W") (setf player "B") (setf player "W"))
		)
		
		((equal (mod check 2) 1)
			(if (string= player "W") (setf player "B") (setf player "W"))
		)
	)
	(setf newboard (temp-flip-pieces (copy-list board) position player))
	
    (if (or (deepenough depth) (null (move-generator board player)))
        (list (static board position player) nil)
		
        ; otherwise, generate successors and run minimax recursively
        (let
            (
                ; generate list of sucessor positions
				
                (successors (move-generator newboard player))

                ; initialize current best path to nil
                (best-path nil)

                ; initialize current best score to negative infinity
                (best-score -1000000)

                ; other local variables
                succ-value
                succ-score
            )

            ; explore possible moves by looping through successor positions
            (dolist (successor successors)

                ; perform recursive DFS exploration of game tree
                (setq succ-value (minimax (copy-list newboard) successor (1- depth) player (1+ check)))

                ; change sign every ply to reflect alternating selection
                ; of MAX/MIN player (maximum/minimum value)
                (setq succ-score (- (car succ-value)))

                ; update best value and path if a better move is found
                ; (note that path is being stored in reverse order)
                (when (> succ-score best-score)
                      (setq best-score succ-score)
                      (setq best-path (cons successor (cdr succ-value)))
                )
            )

            ; return (value path) list when done
            (list best-score best-path)
        )
	)
)