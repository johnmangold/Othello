#|
                  ***** deepenough.lsp *****

Checks if the depth is zero.

Author: John Mangold
Class:	SDSM&T CSC447/547 Artificial Intelligence
Date: 	Spring 2016

Usage:    (deepenough depth)
          where depth is the current depth

Returns:  (t)
          returns true if the depth is zero
		  (nil)
		  returns nil if the depth is not zero
|#
(defun deepenough (depth) 
	(cond
		; if the depth is zero return true
		((equal depth 0))
		; if the depth is not zero return false
		( t nil)
	)
)