(* 目的：listの要素数を返す *)
(* length : int list -> int *)
let rec length aList = match aList with
    [] -> 0
    |first :: rest -> 1 + length rest
    

let test1 = length [] = 0
let test2 = length [0] = 1
let test3 = length [0; 1] = 2

