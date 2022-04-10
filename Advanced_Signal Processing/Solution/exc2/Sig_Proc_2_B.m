N=200

n=0:1:N-1;

f=cos(pi/5*n)+cos(pi/4*n);


F=fft(f,N);
F1=fft(f,N/2);
subplot(3,1,1);
stem(n/2,f),title("")

subplot(3,1,2);
plot(abs(F)),title('Magnitude of DTF(f[n]) of N');

subplot(3,1,3);
plot(abs(F1)),title('Magnitude of DTF(f[n]) of N/2')