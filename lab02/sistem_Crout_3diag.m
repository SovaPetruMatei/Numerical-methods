function x=sistem_Crout_3diag(d,a,c,b)

  [L U]=Crout_3diag(d,a,c);
  y=SIT(L,b);
  x=SST(U,y);

  endfunction
