type phosphate = string
type deoxyribose = string

type nucleobase =
  | A
  | T
  | C
  | G
  | None

type nucleotide = {
  p: phosphate;
  d: deoxyribose;
  n: nucleobase
}

let generate_nucleotide base =
  let nb =
    match base with
    | 'A' -> A
    | 'T' -> T
    | 'C' -> C
    | 'G' -> G
    | _ -> None
  in
  {
    p = "phosphate";
    d = "deoxyribose";
    n = nb
  }

(* TEST *)
let () =
  let print_nucleotide nt =
    let base_str = match nt.n with
      | A -> "A"
      | T -> "T"
      | C -> "C"
      | G -> "G"
      | None -> "None"
    in
    Printf.printf "P: %s, D: %s, N: %s\n" nt.p nt.d base_str
  in
  print_nucleotide (generate_nucleotide 'A');
  print_nucleotide (generate_nucleotide 'T');
  print_nucleotide (generate_nucleotide 'X');
  print_nucleotide (generate_nucleotide 'G')
