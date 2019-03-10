function x = morse_encode(c)

alphabet = "ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvxyz"; % Alfabetul folosit

length = length(alphabet);
flag = 0;

for i = 1:length
  if(alphabet(i) == c )
    flag = 1;
  endif
endfor
if(flag == 0)
  disp("Caracterul nu a fost gasit in arbore!");
  x = '*';
  break;
endif

% Codificarea propriu-zisa
switch c
    case 'A'
      x = ".-";
    case 'B'
      x = "-...";
    case 'C'
      x = "-.-.";
    case 'D'
      x = "-..";
    case 'E'
      x = ".";
    case 'F'
      x = "..-.";
    case 'G'
      x = "--.";
    case 'H'
      x = "....";
    case 'I'
      x = "..";
    case 'J'
      x = ".---";
    case 'K'
      x = "-.-";
    case 'L'
      x = ".-..";
    case 'M'
      x = "--";
    case 'N'
      x = "-.";
    case 'O'
      x = "---";
    case 'P'
      x = ".--.";
    case 'Q'
      x = "--.-";
    case 'R'
      x = ".-.";
    case 'S'
      x = "...";
    case 'T'
      x = "-";
    case 'U'
      x = "..-";
    case 'V'
      x = "...-";
    case 'X'
      x = "-..-";
    case 'Y'
      x = "-.--";
    case 'Z'
      x = "--..";
    
    case 'a'
      x = ".-";
    case 'b'
      x = "-...";
    case 'c'
      x = "-.-.";
    case 'd'
      x = "-..";
    case 'e'
      x = ".";
    case 'f'
      x = "..-.";
    case 'g'
      x = "--.";
    case 'h'
      x = "....";
    case 'i'
      x = "..";
    case 'j'
      x = ".---";
    case 'k'
      x = "-.-";
    case 'l'
      x = ".-..";
    case 'm'
      x = "--";
    case 'n'
      x = "-.";
    case 'o'
      x = "---";
    case 'p'
      x = ".--.";
    case 'q'
      x = "--.-";
    case 'r'
      x = ".-.";
    case 's'
      x = "...";
    case 't'
      x = "-";
    case 'u'
      x = "..-";
    case 'v'
      x = "...-";
    case 'x'
      x = "-..-";
    case 'y'
      x = "-.--";
    case 'z'
      x = "--..";
end

endfunction