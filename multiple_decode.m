function x = multiple_decode(sir)

Tokens = {}; 

%Impartirea sirului in tokens

while ~isempty(sir)
    [Tokens{end+1} sir] = strtok(sir,' ');
endwhile

[m,n] = size(Tokens);

aux = '';
x = '';

% Decodificarea propriu-zisa

for j = 1 : n
  aux = morse_decode(Tokens{j});
  x = strcat(x,aux);
endfor

endfunction