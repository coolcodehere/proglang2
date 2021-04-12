fun product(nil, nil) = 0
  | product([m1], [m2]) = m1 * m2
  | product(m1::l1, m2::l2) = m1 * m2 + product(l1, l2); 