(defun palindrome()
  	(format t "Please enter any string : ")
	(finish-output nil);輸入任意字串 記得要用括號括起來
	(let ((n (read)))
	(if (equal n (reverse n)) ;利用 reverse 函式判斷是否相反後是否 palindrome
		(format t "~A is palindrome~%" n)
  		(format t "~A is not palindrome~%" n)
	)
	)
)
(palindrome);宣告函式
