let ft_print_rev str =
  let len = String.length str in
  let rec loop i =
    if i >= 0 then (
      print_char (String.get str i);
      loop (i - 1)
    )
  in
  loop (len - 1);
  print_char '\n'

(* TEST *)
let () =
  ft_print_rev "Hello world !";  
  ft_print_rev "";                
  ft_print_rev "OCaml"         
