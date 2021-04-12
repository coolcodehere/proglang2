fun choose 0 _ = [nil]
  | choose _ nil = nil
  | choose n (a::T) = choose n T @  map (fn C => a::C) (choose (n-1) T);

fun powerset nil = [nil]
  | powerset (a::S) = powerset S @ map (fn x => a::x) (powerset S);




