fun member(e, []) = false
  | member(e, a::s) = if e = a then true else member(e, s);

fun union([], s2) = s2
  | union(e::s1, s2) = if member(e, s2) then union(s1, s2) else union(s1, e::s2);