let rec ft_countdown n =
  if n < 0 then (
    print_int 0;
    print_char '\n'
  )
  else (
    print_int n;
    print_char '\n';
    ft_countdown (n - 1)
  )

(* TEST *)
let () =
  print_endline "Countdown from 3:";
  ft_countdown 3;
  print_endline "---";

  print_endline "Countdown from 0:";
  ft_countdown 0;
  print_endline "---";

  print_endline "Countdown from -1:";
  ft_countdown (-1);
  print_endline "---"
