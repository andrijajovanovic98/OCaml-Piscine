let crossover l1 l2 =
  let rec contains x = function
    | [] -> false
    | y :: ys -> if x = y then true else contains x ys
  in
  let rec aux acc = function
    | [] -> List.rev acc
    | x :: xs ->
        if contains x l2 then aux (x :: acc) xs
        else aux acc xs
  in
  aux [] l1

(* TEST *)
let () =
  let print_int_list lst =
    print_string "[";
    List.iter (fun i -> Printf.printf "%d; " i) lst;
    print_endline "]"
  in
  print_int_list (crossover [1; 2; 3] [2; 3; 4]);
  print_int_list (crossover [] [1; 2; 3]);
  print_int_list (crossover [1; 2; 3] []);
  print_int_list (crossover [4; 5; 6] [1; 2; 3])
