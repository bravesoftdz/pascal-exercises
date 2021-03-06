{
	Copyright (c) 2012 Roland Yonaba

	Permission is hereby granted, free of charge, to any person obtaining a
	copy of this software and associated documentation files (the
	"Software"), to deal in the Software without restriction, including
	without limitation the rights to use, copy, modify, merge, publish,
	distribute, sublicense, and/or sell copies of the Software, and to
	permit persons to whom the Software is furnished to do so, subject to
	the following conditions:

	The above copyright notice and this permission notice shall be included
	in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
	OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
	MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
	IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
	CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
	TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
	SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
}

program comp_lcm;
uses wincrt;

{Returns GCD(a,b)}
function Egcd(a,b:integer):integer;
begin
	if (a=0) or (b=0) then Epgcd:=0
	else
		while (a<>b) do
			if (a>b) then a:=a-b else b:=b-a;
	Egcd:=a;
end;

{Returns LCM(a,b)}
function lcm(a,b:integer):integer;
begin
	if (a=0) or (b=0) then ppcm:=0
	else
		lcm:=trunc((a*b)/Epgcd(a,b));
end;

{Main}
var a,b:integer;
begin
	writeln('Enter a:'); readln(a);
	writeln('Enter b:'); readln(b);
	writeln('lcm = ',lcm(a,b));
end.

