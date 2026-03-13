function p3(nume_fisier)

  a=load(nume_fisier);
  sl=0;
  sc=0;
  sd1=0;
  sd2=0;

  sl=sum(a,2);
  sc=sum(a,1);

  sd1=sum(diag(a));
  sd2=sum(diag(fliplr(a)));

  S=sl(1);

  if all(sl==S) && all(sc==S) && sd1==S && sd2==S
    disp('magic');
  else
    disp('nu e magic');
  end

  end
