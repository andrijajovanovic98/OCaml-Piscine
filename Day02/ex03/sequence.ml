let sequence n =
  let rec next s =
    let len = String.length s in
    let rec aux i count acc =
      if i >= len then acc
      else
        let c = s.[i] in
        let rec count_same j cnt =
          if j < len && s.[j] = c then count_same (j + 1) (cnt + 1)
          else (j, cnt)
        in
        let (next_i, cnt) = count_same i 0 in
        aux next_i 0 (acc ^ string_of_int cnt ^ Char.escaped c)
    in
    aux 0 0 ""
  in
  let rec loop i curr =
    if i <= 0 then ""
    else if i = 1 then curr
    else loop (i - 1) (next curr)
  in
  loop n "1"

(* TEST *)
let () =
  print_endline (sequence (-1)); 
  print_endline (sequence 1);    
  print_endline (sequence 2);     
  print_endline (sequence 3);    
  print_endline (sequence 4);   
  print_endline (sequence 5);    
  print_endline (sequence 6);     
