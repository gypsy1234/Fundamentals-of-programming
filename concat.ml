(* 目的：文字列のlistの各要素を繋げた文字列を返す *)
(* concat : string list -> string *)
let concat aList = List.fold_right (^) aList ""
