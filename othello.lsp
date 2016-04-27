#|
                  ***** othello.lsp *****

Generalized recursive minimax routine.

Author: Cassidy Vollmer and John Mangold
Class:	SDSM&T CSC447/547 Artificial Intelligence
Date: 	Spring 2016

Usage:    (othello player)
           where player is the color of the player who is about to place a piece

Returns:  (successors)
           where successors is a list of current-spot values of where
		   the given player could place a piece

Functions Called:	(player-turn playercolor)
					 deals with the players color
					 
					(valid-move pos color)
					 checks to make sure that the move given is valid
|#

;----------load needed files here---------------------
(load 'quickload)

;---------------Global variables----------------------
(defvar *board* (othello-init))

;------------------functions--------------------------

(defun othello (player)
	; if player is null print usage
	(when (null player)
		(format t "Usage from interpreter: (othello [Black or White])~%")
		(format t "Please call the program appropriately.~%")
		(return)
	)
	; downcase the player input
	(setf player (string-downcase player))
	; check to make sure player is white or black
	(when (not (or (string= player "white") (string= player "black")))
		; print usage statement
		(format t "Usage: clisp othello.lsp [Black or White]~%")
		(format t "You must specify whether you wish to be either White or Black.~%")
		(return)
	)
	
	(setf *board* (othello-init))
	(let ((first nil)		; initalize first to nil
		  (turncount 0)		; initalize turncount to 0
		  (playercolor nil)	; initalize playercolor to nil
		  (compcolor nil)	; initalize compcolor to nil
		  (wcount 0)
		  (bcount 0)
		 )
		 ; set player color and computer color based on input
		(cond 
			((string= player "white")
				(setf playercolor "W")
				(setf compcolor "B")
			)
			
			((string= player "black")
				(setf playercolor "B")
				(setf compcolor "W")
			)
		)
		; ask if the user would like to go first
		(loop do
			(format t "Would you like to go first? [y/n]: ")
			(setf first (string-downcase (read-line)))
		while (and (not (string= first "y")) (not (string= first "n")) (not (string= first "yes")) (not (string= first "no"))))
		; print game information for corresponding player color
		(cond
			((string= playercolor "white")
				(format t "~%You will be playing as white.  You will play against black.~%")
				(format t "Please enter your moves as row col.  For example, 3 4 is a good input.~%")
				(format t "You must flank at least one black piece each time or forfeit your turn.~%")
				(format t "If you cannot move, type f to forfeit your turn.~%~%")
			)
			
			((string= playercolor "black")
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
				
				(loop do
					(cond
						((equal (mod turncount 2) 0)
							(cond ((and (null (move-generator *board* "W")) (null (move-generator *board* "B"))) 
									(format t "~%There are no more moves.")
									(dolist (i *board*)
										(if (string= i "W") (incf wcount))
										(if (string= i "B") (incf bcount))
									)
									(cond ((> bcount wcount) (format t "Black Wins! ~a - ~a" bcount wcount))
										  (t (format t "White Wins! ~a - ~a" wcount bcount))
									)
									(return)
								  )
							)
							(player-turn playercolor)
							(incf turncount)
						)
						
						(t 
							(cond ((and (null (move-generator *board* "W")) (null (move-generator *board* "B"))) 
									(format t "~%There are no more moves.")
									(dolist (i *board*)
										(if (string= i "W") (incf wcount))
										(if (string= i "B") (incf bcount))
									)
									(cond ((> bcount wcount) (format t "Black Wins! ~a - ~a" bcount wcount))
										  (t (format t "White Wins! ~a - ~a" wcount bcount))
									)
									(return)
								  )
							)
							(computer-turn compcolor)
							(incf turncount)
						)
					)
				)
				
			)
			
			(t 
				;loop that starts with computer-turn
				
				(loop do
					(cond
						((equal (mod turncount 2) 0)
							(cond ((and (null (move-generator *board* "W")) (null (move-generator *board* "B"))) 
									(format t "~%There are no more moves.")
									(dolist (i *board*)
										(if (string= i "W") (incf wcount))
										(if (string= i "B") (incf bcount))
									)
									(cond ((> bcount wcount) (format t "Black Wins! ~a - ~a" bcount wcount))
										  (t (format t "White Wins! ~a - ~a" wcount bcount))
									)
									(return)
								  )
							)
							(computer-turn compcolor)
							(incf turncount)
						)
						
						(t 
							(cond ((and (null (move-generator *board* "W")) (null (move-generator *board* "B"))) 
									(format t "~%There are no more moves.")
									(dolist (i *board*)
										(if (string= i "W") (incf wcount))
										(if (string= i "B") (incf bcount))
									)
									(cond ((> bcount wcount) (format t "Black Wins! ~a - ~a" bcount wcount))
										  (t (format t "White Wins! ~a - ~a" wcount bcount))
									)
									(return)
								  )
							)
							(player-turn playercolor)
							(incf turncount)
						)
					)
				)
				
			)
		)
	)
)