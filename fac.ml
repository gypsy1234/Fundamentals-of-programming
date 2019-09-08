# use "enumerate.ml"

(* 目的：受け取った自然数の階乗を求める *) 
(* fac : int -> int *)
let fac n = 
  List.fold_right ( * ) (enumerate n) 1

let test1 fac 0 = 1
let test2 fac 1 = 1
let test3 fac 2 = 2
let test4 fac 3 = 6