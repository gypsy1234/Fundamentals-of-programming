#use "ekimei_t.ml"

(* 目的：ekimei_tを引数にとり、「路線名, 駅名（かな）」の形式で表示する *)
(* hyoji ekimei_t -> string *)
let hyoji ekimei = match ekimei with
    {kanji = kanji; kana = kana; romaji = romaji; shozoku = shozoku} -> shozoku ^ ", " ^ kanji ^ "（" ^ kana ^ "）"

let test1 = hyoji {kanji = "練馬"; kana = "ねりま"; romaji = "nerima"; shozoku = "西武池袋線"} = "西武池袋線, 練馬（ねりま）"
let test2 = hyoji {kanji = "新宿"; kana = "しんじゅく"; romaji = "shinjuku"; shozoku = "山手線"} = "山手線, 新宿（しんじゅく）"
let test3 = hyoji {kanji = "池袋"; kana = "いけぶくろ"; romaji = "ikebukuro"; shozoku = "西武池袋線"} = "西武池袋線, 池袋（いけぶくろ）"