#|
                  ***** static.lsp *****

Static evalutation function.

Author: John Mangold
Class:	SDSM&T CSC447/547 Artificial Intelligence
Date: 	Spring 2016

Usage:    (static position color)
		   where position is the position that the player wishes to place their piece
           where color is the color of the player  who is about to place a piece

Returns:  (count)
           where count is the number of flips
	
Functions Called:	(count-flips position color)
					 counts the number of piece that would be flipped	
|#
(defun static (board position color)
	(let ((count nil))
		(setf count (count-flips board position color))
	)
)