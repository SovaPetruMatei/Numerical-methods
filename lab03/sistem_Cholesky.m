function x=sistem_Cholesky(A,b)

  L=Cholesky(A);
  y=SIT(L,b);
  x=SST(L',y);

  endfunction
