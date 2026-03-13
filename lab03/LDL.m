function [L D]=LDL(A)
  n=size(A,1);
  L=eye(n);
  D=zeros(n,n);

  for j=1:n
    if j==1
      D(j,j)=A(j,j);
    else
    s = L(j,1:j-1);
    D(j,j)=A(j,j)-L(j,1:j-1)*D(1:j-1,1:j-1)*L(j,1:j-1)';

    endif
    for i=j+1:n
      if j==1
        L(i,j)=A(i,j)/D(j,j);
      else
      L(i,j)=(A(i,j)-L(i,1:j-1)*D(1:j-1,1:j-1)*L(j,1:j-1)')/D(j,j);
      endif
    endfor
  endfor


  endfunction
