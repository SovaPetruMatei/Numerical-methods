function L=Cholesky_3diag(A)
    n=size(A, 1);


    d=diag(A);
    e=diag(A, -1);

    a=zeros(n,1);
    b=zeros(n-1,1);

    a(1)=sqrt(d(1));


    for i=1:n-1
        b(i)=e(i)/a(i);
        a(i+1)=sqrt(d(i+1)-b(i)^2);
    end

    L=diag(a)+diag(b,-1);
endfunction
