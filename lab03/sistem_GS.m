function x=sistem_GS(A,b)

  [Q R]=GS(A);
  x=SST(R,Q'*b);

  endfunction
