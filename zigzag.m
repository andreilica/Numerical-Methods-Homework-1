function Z = zigzag(n)

    Z = zeros(n); % Initializarea matricei zigzag
    flag = 1; % Un flag care retine indicele la care s-a ajuns, ce urmeaza a fi introdus in matrice
    schimbareColoana = 1; %Variabila ce indica daca trebuie schimbata coloana sau nu
    schimbareRand = 0; %Variabil ce indica daca trebuie schimbat randul sau nu
 
    % Crearea zonei de deasupra diagonalei secundare
    for i = (2:n)
        rand = (1:i);
        coloana = (1:i);
 
        % Schimbarea de pe linie pe coloana atunci cand este cazul 
        
        if schimbareColoana
            coloana = fliplr(coloana);
            schimbareRand = 1;
            schimbareColoana = 0;
        else
            if schimbareRand
              rand = fliplr(rand);
              schimbareRand = 0;
              schimbareColoana = 1;
            endif           
        endif
 
        for j = (1:length(rand))
            Z(rand(j),coloana(j)) = flag;
            flag = flag + 1;
        endfor   
    endfor
 
    %Crearea zonei de sub diagonala secundara
    
    for i = (2:n)
        rand = (i:n);
        coloana = (i:n);
 
        % Schimbarea de pe linie pe coloana atunci cand este cazul 
        
        if schimbareColoana
            coloana = fliplr(coloana);
            schimbareRand = 1;
            schimbareColoana = 0;
        else
            if schimbareRand
              rand = fliplr(rand);
              schimbareRand = 0;
              schimbareColoana = 1;
            endif           
        endif
 
        for j = (1:length(rand))
            Z(rand(j),coloana(j)) = flag;
            flag = flag + 1;
        endfor   
    endfor
    
endfunction