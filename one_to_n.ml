# use "enumerate.ml"

(* 目的：1から受け取った自然数までの合計を求める *) 
(* one_to_n : int -> int *)
let one_to_n n = 
  List.fold_right (+) (enumerate n) 0

let test1 - one_to_n 1 = 1
let test2 - one_to_n 2 = 3
let test3 - one_to_n 3 = 6