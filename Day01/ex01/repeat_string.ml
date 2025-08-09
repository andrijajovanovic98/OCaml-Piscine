let repeat_string ?str n =
  let s = match str with
    | Some value -> value
    | None -> "x"
  in
  if n < 0 then "Error"
  else
    let rec build acc count =
      if count = 0 then acc
      else build (s ^ acc) (count - 1)
    in
    build "" n

(* TEST *)
let () =
  print_endline (repeat_string (-1));
  print_endline (repeat_string 0);
  print_endline (repeat_string ~str:"Toto" 1);
  print_endline (repeat_string 2);
  print_endline (repeat_string ~str:"a" 5);
  print_endline (repeat_string ~str:"what" 3)
