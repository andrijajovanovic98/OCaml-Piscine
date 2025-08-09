let gray n =
  let rec build n =
    if n = 0 then [""]
    else
      let prev = build (n - 1) in
      let with_0 = List.map (fun s -> "0" ^ s) prev in
      let with_1 = List.map (fun s -> "1" ^ s) (List.rev prev) in
      with_0 @ with_1
  in
  let codes = build n in
  List.iter (fun s -> print_string (s ^ " ")) codes;
  print_newline ()

(* TEST *)
let () =
  gray 1;
  gray 2;
  gray 3
