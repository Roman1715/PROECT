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
writeln;
end;
for g:=1 to m do
begin
no:=0; lo:=0;
w:=0;
repeat
inc(w);
if a[w,g]<0 then no:=w;
until (a[w,g]<0) or (w=m);
w:=n+1;
repeat
dec(w);
if a[w,g]<0 then lo:=w;
until (a[w,g]<0) or (w=1);
if (lo<>no) and (no<>0) then
begin
buf:=a[no,g];
a[no,g]:=a[lo,g];
a[lo,g]:=buf;
end;
end;
writeln('Конечный массив');
for w:=1 to n do
begin
for g:=1 to m do
write(a[w,g]:3);
writeln;
end;
end.