#|
                  ***** othello-init.lsp *****

Set board to initial board start state.

Author: John Mangold
Class:	SDSM&T CSC447/547 Artificial Intelligence
Date: 	Spring 2016

Usage:    (othello-init)

Returns:  (board)
          where board is the initial board
|#
(defun othello-init ()
	(let ((board nil)) ; initialize board to nil
		; set the board to the initial start state
		(setf board (list   "-1" "-1" "-1" "-1" "-1" "-1" "-1" "-1" "-1" "-1"
							"-1" "-" "-" "-" "-" "-" "-" "-" "-" "-1" 
							"-1" "-" "-" "-" "-" "-" "-" "-" "-" "-1" 
							"-1" "-" "-" "-" "-" "-" "-" "-" "-" "-1" 
							"-1" "-" "-" "-" "W" "B" "-" "-" "-" "-1" 
							"-1" "-" "-" "-" "B" "W" "-" "-" "-" "-1" 
							"-1" "-" "-" "-" "-" "-" "-" "-" "-" "-1" 
							"-1" "-" "-" "-" "-" "-" "-" "-" "-" "-1" 
							"-1" "-" "-" "-" "-" "-" "-" "-" "-" "-1" 
							"-1" "-1" "-1" "-1" "-1" "-1" "-1" "-1" "-1" "-1"))		
	)
)