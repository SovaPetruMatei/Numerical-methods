function x=sistem_Cholesky(A,b)

  L=Cholesky_3diag(A);
  y=SIT(L,b);
  x=SST(L',y);

  endfunction
