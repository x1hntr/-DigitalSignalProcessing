function [C,B,A] = dir2par(b,a);

M = length(b);
N = length(a);

[r1,p1,C] = residue(b,a);

p = cplxpair(p1,10000000*eps);
I = cplxcomp(p1,p);
r = r1(I);

K = floor(N/2); B = zeros(K,2); A = zeros(K,3);
if K*2 == N; %N even, order of A(z) odd, one factor is first order
	for i=1:2:N-2
		Brow = r(i:1:i+1,:);
		Arow = p(i:1:i+1,:);
		[Brow,Arow] = residue(Brow,Arow,[]);
		B(fix((i+1)/2),:) = real(Brow);
		A(fix((i+1)/2),:) = real(Arow);
	end
	[Brow,Arow] = residue(r(N-1),p(N-1),[]);
	B(K,:) = [real(Brow) 0]; A(K,:) = [real(Arow) 0];
else
        for i=1:2:N-1
		Brow = r(i:1:i+1,:);
		Arow = p(i:1:i+1,:);
		[Brow,Arow] = residue(Brow,Arow,[]);
		B(fix((i+1)/2),:) = real(Brow);
		A(fix((i+1)/2),:) = real(Arow);
	end     
end
