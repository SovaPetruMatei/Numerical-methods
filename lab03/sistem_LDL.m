function x=sistem_LDL(A,b)

  [L D]=LDL(A);
  z=SIT(L,b);
  y=SIT(D,z);
  x=SST(L',y);


  endfunction
