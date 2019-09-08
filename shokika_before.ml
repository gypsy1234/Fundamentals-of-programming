#use "eki_t.ml" 
 
(* 駅リストの例 *) 
 
let eki_list = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = infinity; temae_list = []}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 
 
(* 目的：ekimei list から eki list を作る *) 
(* shokika : eki_t list -> string -> eki_t list *) 
let rec shokika eki_list kiten = match eki_list with 
    [] -> [] 
  | ({namae = k; saitan_kyori = s; temae_list = t} as first) :: rest -> 
      if k = kiten 
      then {namae = k; saitan_kyori = 0.; temae_list = [k]} 
	   :: shokika rest kiten 
      else first :: shokika rest kiten 
 
(* テスト *) 
let test1 = shokika [] "茗荷谷" = [] 
let test2 = shokika eki_list "茗荷谷" = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 