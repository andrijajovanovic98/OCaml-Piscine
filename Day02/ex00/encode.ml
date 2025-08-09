let encode lst =
  let rec aux acc count current = function
    | [] -> List.rev ((count, current) :: acc)
    | x :: xs ->
        if x = current then
          aux acc (count + 1) current xs
        else
          aux ((count, current) :: acc) 1 x xs
  in
  match lst with
  | [] -> []
  | x :: xs -> aux [] 1 x xs

(* TEST *)
let print_result_char lst =
  List.iter (fun (n, c) -> Printf.printf "(%d, %c) " n c) lst;
  print_newline ()

let print_result_int lst =
  List.iter (fun (n, i) -> Printf.printf "(%d, %d) " n i) lst;
  print_newline ()


let () =
  print_result_char (encode ['a'; 'a'; 'a'; 'b'; 'b']);
  print_result_char (encode []);
  print_result_int (encode [1;1;2;3;3;3]);
  print_result_char (encode ['x']);
  print_result_char (encode ['a'; 'b'; 'c'; 'c'; 'c'; 'd'])

