function r = baza(sursa,b1,b2)

# Verificarea validitatii bazei1

if b1 < 2 && b1 >30
  disp("Baza introdusa nu este valida!");
  break;
endif

# Verificarea validitatii bazei2
if b2 < 2 && b2 >30
  disp("Baza introdusa nu este valida!");
  break;
endif

search_string = "0123456789ABCDEFGHIJKLMNOPQRST"; 

length_s =  length(sursa);
r = ""; 

# Verificarea validitatii string-ului sursa
for i = 1 : length_s
  if( isempty(findstr(upper(sursa(i)),search_string) ) )
    disp("Sursa introdusa nu este valida!");
    break;
  endif
endfor

exp = 0; 
nr = 0;

#Transformarea numarului din baza1 in baza 10

for i = length_s : -1 : 1
  reprez_decim = findstr(upper(sursa(i)),search_string) - 1;
  nr += reprez_decim * (b1^exp);
  exp++;
endfor

#Transformarea numarului din 10 in baza2
while(nr)

  aux = mod(nr,b2);
  r = strcat(r, search_string(aux + 1) );
  nr = floor(nr/b2); 
endwhile

r = fliplr(r); % Inversarea sirului r pentru a avea ordinea corecta

if(b1 == b2)
  r = sursa;
endif

endfunction