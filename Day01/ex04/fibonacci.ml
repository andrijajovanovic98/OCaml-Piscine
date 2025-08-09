let fibonacci n =
  if n < 0 then -1
  else
    let rec fib_aux n a b =
      if n = 0 then a
      else fib_aux (n - 1) b (a + b)
    in
    fib_aux n 0 1

(* TEST *)
let () =
  print_int (fibonacci (-42)); print_char '\n'; 
  print_int (fibonacci 0); print_char '\n';     
  print_int (fibonacci 1); print_char '\n';     
  print_int (fibonacci 3); print_char '\n';     
  print_int (fibonacci 6); print_char '\n'     
