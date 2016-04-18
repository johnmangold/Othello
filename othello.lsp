#|




|#

;----------load needed files here---------------------
(load 'othello-init)
(load 'print-board)
(load 'valid-move)
(load 'can-flip)
(load 'flip-pieces)
(load 'player-turn)
(load 'computer-turn)
;(load 'minimax)

;---------------Global variables----------------------
(defvar *board* (othello-init))
(defvar *player*)
(defvar *computer*)

;------------------functions--------------------------

(defun othello (player)
	(when (null player)
		(format t "Usage from interpreter: (othello [Black or White])~%")
		(format t "Please call the program appropriately.~%")
		(return)
	)
	
	(setf player (string-downcase player))
	
	(when (not (or (string= player "white") (string= player "black")))
		(format t "Usage: clisp othello.lsp [Black or White]~%")
		(format t "You must specify whether you wish to be either White or Black.~%")
		(return)
	)
	
	(cond 
		((string= player "white")
			(setf *player* "white")
			(setf *computer* "black")
		)
		
		((string= player "black")
			(setf *player* "black")
			(setf *computer* "white")
		)
	)
	
	;start the infinite loop for the game
	(let ((first nil)
		  (turncount 0)
		 )
		
		(loop do
			(format t "Would you like to go first? [y/n]: ")
			(setf first (string-downcase (read-line)))
		while (or (string= first "y") (string= first "n") (string= first "yes") (string= first "no")))
		
		(cond
			((string= player "white")
				(format t "~%You will be playing as white.  You will play against black.~%")
				(format t "Please enter your moves as row col.  For example, 3 4 is a good input.~%")
				(format t "You must flank at least one black piece each time or forfeit your turn.~%")
				(format t "If you cannot move, type f to forfeit your turn.~%~%")
			)
			
			((string= player "black")
				(format t "~%You will be playing as black.  You will play against white")
				(format t "Please enter your moves as row col.  For example, 3 4 is a good input.~%")
				(format t "You must flank at least one white piece each time or forfeit your turn.~%")
				(format t "If you cannot move, type f to forfeit your turn.~%~%")
			)
		)
		
		;actually start loop until game is finished
		;alternate player between black and white
		;figure a way to tell when the game is over
		;could use move-generator to check for moves for both players
		;if neither player returns moves the game is done.
		;if player wants to go first
		(cond
			((or (string= first "y") (string= first "yes"))
				;loop that starts with player-turn
				
			)
			
			(t 
				;loop that starts with computer-turn
				
			)
		)
	)
)

(when (equal (length *ARGS*) 0)
	(format t "Usage: clisp othello.lsp [Black or White]~%")
	(return)
)

(let ((player (string-downcase (first *ARGS*))))
	(when (not (or (string= player "white") (string= player "black")))
		(format t "Usage: clisp othello.lsp [Black or White]~%")
		(format t "You must specify whether you wish to be either White or Black.~%")
		(return)
	)

	(othello player)
)