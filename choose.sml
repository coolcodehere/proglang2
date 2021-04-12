fun choose 0 _ = [nil]
  | choose _ nil = nil
  | choose(n, m::L) = choose n L @ map(fn C => m::C)(choose (n-1) L);
