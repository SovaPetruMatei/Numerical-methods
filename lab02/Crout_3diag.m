function [L U]=Crout_3diag(d,a,c)

  n=length(a);
  L=zeros(n,n);
  U=eye(n);

  for i=1:n
    if i==1
      L(i,i)=a(i);
    else
      L(i,i)=a(i)-L(i,i-1)*U(i-1,i);

    endif

    if i!=n
      L(i+1,i)=d(i);
      U(i,i+1)=c(i)/L(i,i);
    endif

  endfor

  endfunction
