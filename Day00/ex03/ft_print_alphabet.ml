let rec print_chars c =
  if c <= int_of_char 'z' then (
    print_char (char_of_int c);
    print_chars (c + 1)
  )

let ft_print_alphabet () =
  print_chars (int_of_char 'a');
  print_char '\n'

(* TEST *)
let () = ft_print_alphabet ()
