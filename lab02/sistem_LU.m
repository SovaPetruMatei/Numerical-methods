function x=sistem_LU(A,b)

  [L U]=Crout(A);
  y=SIT(L,b);
  x=SST(U,y);

  end
