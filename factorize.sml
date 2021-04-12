fun  factorizeHelper(n, 0) = []
  | factorizeHelper(n, m) = if (n mod m) = 0 then m :: factorizeHelper(n, m-1) else factorizeHelper(n, m-1);

fun factorize(n) = factorizeHelper(n, n);


