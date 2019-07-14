(* 目的：文字列のlistの各要素を繋げた文字列を返す *)
(* concat : string list -> string *)
let rec concat aList = match aList with
    [] -> ""
    |first :: rest -> first ^ concat rest
    
let test1 = concat [] = ""
let test2 = concat ["春"] = "春"
let test3 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"
