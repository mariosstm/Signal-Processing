x=[1,1,-1,-1,0,0]
h=[1,-1,1,0,0,0]
X=fft(x)
H=fft(h)

Y=X.*H
y=ifft(Y)
