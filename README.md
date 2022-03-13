# PROECT
const n=4; m=4;
var a: array [1..n,1..m] of integer;
    w,g,no,lo,k: byte;
    buf: integer;
begin
writeln('Исходный массив');
for w:=1 to n do
begin
for g:=1 to m do
begin
a[w,g]:=random(19)-9;
write(a[w,g]:3);
end;
