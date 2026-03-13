function p4(nume_fisier)
  info = stat(nume_fisier);

  if isempty(info)
    disp('nu am gasit fisierul');
   else
    dim=info.size;
    disp(dim);
  end

  end
