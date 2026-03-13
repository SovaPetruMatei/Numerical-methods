function [Q R]=GS(A)
  [m,n]=size(A);
  Q=zeros(m, n);
  R=zeros(n, n);
  for j=1:n
    if j>1
    R(1:j-1,j)=Q(:,1:j-1)' * A(:,j);
    U(:,j)=A(:,j)-Q(:,1:j-1)*R(1:j-1,j);
  else
    U(:,j)= A(:,j);
  endif

    R(j,j)=sqrt(U(:,j)'*U(:,j));
    Q(:,j)= U(:,j) / R(j,j);
  endfor


  endfunction
