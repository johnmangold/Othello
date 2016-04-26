;(load 'deepenough)
;(load 'move-generator)

(defun minimax (position depth player alpha beta)
    ; if we have searched deep enough, or there are no successors,
    ; return position evaluation and nil for the path
    (if (or (deepenough depth) (null (move-generator player)))
        (list (static position player) nil)
        ; otherwise, generate successors and run minimax recursively
        (let
            (
                ; generate list of sucessor positions
                (successors (move-generator player))

                ; initialize current best path to nil
                (best-path nil)
				
                ; other local variables
                succ-value
            )
			(cond
				((eq player "B")
					; explore possible moves by looping through successor positions
					(dolist (successor successors)
						; perform recursive DFS exploration of game tree
						(setq succ-value (car (minimax successor (1- depth) player alpha beta)))

						(cond 
							((> succ-value alpha) 
								(setf alpha succ-value)
								(setf best-path (cons successor (cdr succ-value)))
							)
							(t (list alpha best-path))
						)
					)
					(list alpha best-path)
				)
				(t
				
					; explore possible moves by looping through successor positions
					(dolist (successor successors)
						; perform recursive DFS exploration of game tree
						(setq succ-value (car (minimax successor (1- depth) "black" alpha beta)))

						(cond 
							((< succ-value beta) 
								(setf beta succ-value)
								(setf best-path (cons successor (cdr succ-value)))
							)
							(t (list beta best-path))
						)
					)
				)
			)
		)
    )
)