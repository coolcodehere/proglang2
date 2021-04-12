fun cut n [] = []
  | cut(n, el::x) = if n > el then (cut n x) else el::(cut n x);