function y= p5(numefis,sir)

  y=0;
  nr=0;

  f=fopen(numefis,'r');

  line=fgetl(f);

  while ischar(line)==1
    nr=length(strfind(line,sir));
    y=y+nr;
    fprintf('%d %s\n',nr,line);
    line=fgetl(f);
  end

  fclose(f);

  end
