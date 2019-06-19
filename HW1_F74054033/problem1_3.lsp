(defun fib1(n) ;fib1 投影片裡面有 就跟著打
	(if (< n 2)
		n
		(+ (fib1 (- n 1)) (fib1 (- n 2)))
	)
)
(defun fib2(n) ;tail recursive for fib 這是網路上找的 是為了減少call func 讓計算速度加快
	(fib2x n 1 0)				;比像是迭代法 跟一般遞迴不太一樣	
)
(defun fib2x(a n ans)
  	(if (= a 0)
		ans
		(fib2x (- a 1) (+ n ans) n)
	)
)

(trace fib1)
(trace fib2)

(format t "Please enter a number for fib1 : ") ;先輸入第一個數字去跑 original fib
(finish-output nil)
(let ((x (read)))  
(format t "~A is the answer"(fib1 x));把答案顯示出來
(format t "~%")
)
(format t "Please enter a number for fib2 : ") ;在輸入第二個數字去跑 tail recursive
(finish-output nil)
(let ((y (read)))
(format t "~A is the answer"(fib2 y))
(format t "~%")
)


