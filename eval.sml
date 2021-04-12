fun pow(num, 0) = 1.0
  | pow(num, 1) = num
  | pow(num, power) = num * pow(num, power - 1);

fun evalHelper([a], x, idx) = a * pow(x, idx)
  | evalHelper(a :: coefficients, x, idx) = 
      a * pow(x, idx) + evalHelper(coefficients, x, idx + 1);

fun eval(coefficients, x) = evalHelper(coefficients, x, 0);
