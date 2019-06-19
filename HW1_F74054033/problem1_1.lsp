(defun prime()
	(format t "Please enter a number : ")
	(finish-output nil);原本無法顯示上面那行 後來加了這句可以把buffer內的東西先print出來
  	(let ((n (read))) ;宣告變數n 且n 是讓使用者自己input數字進去
        (if (equal n 2)
                (format t "2 is a prime number ~%" ) ;若是輸入的數字是2直接print
        (progn
	(if (equal n 1)
	  	(format t "1 is not a prime number ~%" );若是輸入的數字是2直接print
	(progn
	(if (> n 2);要判一定要是正數 所以負數也會被判定為非質數
		(progn  
                (loop for i from 2 to (ceiling (sqrt n )) ;若是不等於2 跑迴圈 開根號的目的
                do					  ;是為了讓它只要判定一半的範圍	
                        (if (equal (mod n i) 0) ;開始除 如果餘數是0代表整除
                        (progn
                                (return (format t "~A is not a prime number ~%" n))
                        )
                        (progn
                                (if (equal i (ceiling (sqrt n))) ;如果跑到開根號的 upper
                                (progn				 ;代表已經確定他是質數
				  				 ;30 = 2*15 判定2就好
                                	(format t "~A is a prime number ~%" n)
				)
                                )
                        )
                        )
                )
		)
		(format t "~A is not a prime number ~%" n)
        )
	)
        )
	)
	)
	)
)
(prime) ;宣告function告訴使用者永這個function
