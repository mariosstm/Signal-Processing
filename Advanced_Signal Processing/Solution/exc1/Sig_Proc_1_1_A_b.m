x=[1,1,-1,-1];
N=length(x);
x=x.';
n=0:N-1;
for k=0:N-1;
  X(k+1)=exp(-j*2*pi*k*n/N)*x;
end

disp(X)