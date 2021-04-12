datatype Tree =
    Empty
  | Node of int * Tree * Tree;

fun searchBST(_, Empty) = false 
  | searchBST(n, Node(a, left, _)) = if n = a then true else searchBST(n, left)
  | searchBST(n, Node(a, Empty, right)) = if n = a then true else searchBST(n, right);