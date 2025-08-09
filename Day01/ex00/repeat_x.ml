let repeat_x n =
  if n < 0 then
    "Error"
  else
    let rec build acc count =
      if count = 0 then acc
      else build ("x" ^ acc) (count - 1)
    in
    build "" n

(* TEST *)
let () =
  print_endline (repeat_x (-1));  
  print_endline (repeat_x 0);     
  print_endline (repeat_x 1);     
  print_endline (repeat_x 5)   
