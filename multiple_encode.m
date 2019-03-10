function x = multiple_encode(str)


length = length(str);
aux = '';
space =' ';
x = '';

%Codificarea propriu-zisa
for i = 1 : length
  aux = morse_encode(str(i));
  x = strcat(x,aux);
  x = strcat(x,{' '});
  
endfor

x = x{1};
endfunction