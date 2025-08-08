let print_comb i j k =
  print_int i;
  print_int j;
  print_int k;
  if i <> 7 || j <> 8 || k <> 9 then
    print_string ", "

let rec loop_k i j k =
  if k <= 9 then (
    print_comb i j k;
    loop_k i j (k + 1)
  )

let rec loop_j i j =
  if j <= 8 then (
    loop_k i j (j + 1);
    loop_j i (j + 1)
  )

let rec loop_i i =
  if i <= 7 then (
    loop_j i (i + 1);
    loop_i (i + 1)
  )

let ft_print_comb () =
  loop_i 0;
  print_char '\n'

(* TEST *)
let () = ft_print_comb ()

