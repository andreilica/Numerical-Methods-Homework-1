function x = morse_decode(sir)

length = length(sir);
root = morse(); %Initializarea arborelui
x = '';

% Verificarea validitatii string-ului introdus
if ( length >  4 )
  disp("Sirul introdus este prea lung pentru a fi folosit in codul morse!");
  break;
endif

% Decodificarea propriu-zisa
for i = 1 : length
  if ( sir(i) == '.' )
     if( x == 'O' )
        disp("Sirul introdus nu respecta schema morse!");
        x = '*';
        break;
     endif
    root = root{2};
    x = root{1};
  else
    if ( sir(i) == '-' )
      if( x == 'O' )
        disp("Sirul introdus nu respecta schema morse!");
        x = '*';
        break;
      endif
      if( x == 'U' )
        disp("Sirul introdus nu respecta schema morse!");
        x = '*';
        break;
      endif
      if( x == 'R' )
        disp("Sirul introdus nu respecta schema morse!");
        x = '*';
        break;
      endif
      root = root{3};
      x = root{1};
    else
      disp("Sirul introdus nu este valid!");
      x = '*';
      break;
    endif
  endif
endfor

    
endfunction