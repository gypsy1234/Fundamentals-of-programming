(* 目的：listの要素のうち偶数の要素のみを含むlistを返す *)
(* even : int list -> int list *)
let rec even aList = match aList with
    [] -> []
    |first :: rest -> if first mod 2 = 0 then first :: even rest
                                         else even rest
    

let test1 = even [] = []
let test2 = even [1] = []
let test3 = even [0; 1; 2] = [0; 2]

