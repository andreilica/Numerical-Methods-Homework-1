function m = morse()

%Ultimul nivel

h = { 'H' {} {} };
v = { 'V' {} {} };
f = { 'F' {} {} };
l = { 'L' {} {} };
p = { 'P' {} {} };
j = { 'J' {} {} };
b = { 'B' {} {} };
x = { 'X' {} {} };
c = { 'C' {} {} };
y = { 'Y' {} {} };
z = { 'Z' {} {} };
q = { 'Q' {} {} };

%Penultimul nivel

s = { 'S' h v };
u = { 'U' f {} };
r = { 'R' l {} };
w = { 'W' p j };
d = { 'D' b x };
k = { 'K' c y };
g = { 'G' z q };
o = { 'O' {} {} };

%Al doilea nivel

i = { 'I' s u };
a = { 'A' r w };
n = { 'N' d k };
M = { 'M' g o };

%Primul nivel

e = { 'E', i, a };
t = { 'T', n, M };

m = {'', e, t };

endfunction