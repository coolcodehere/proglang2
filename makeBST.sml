datatype Tree =
    Empty
  | Node of int * Tree * Tree;

fun insertNode(n, tree, Empty) = Node(n, Empty, Empty)   
  | insertNode(n, tree, Node(n2, left, right)) = 
      if n < n2 
      then insertNode(n, tree, left) 
      else insertNode(n, tree, right);

fun makeBSTHelper([], _) = Empty
  | makeBSTHelper(n::L, t) = makeBSTHelper(L, insertNode(n, t, Empty));

fun makeBST(L) = makeBSTHelper(L, Empty);
