let rec ft_power x n  = 
  if n = 0 then 1
  else x * ft_power x (n - 1)

(* TEST *)
  let () =
    print_int (ft_power 2 4); print_char '\n'; 
    print_int (ft_power 3 0); print_char '\n';
    print_int (ft_power 0 5); print_char '\n';
    print_int (ft_power 5 2); print_char '\n'