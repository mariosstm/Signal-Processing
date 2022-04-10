Fs=8000;

%%Insert all recordings as functions%%
[y1,Fs] = audioread('C:\Users\stama\OneDrive\Desktop\Signal_Processing_Exc1\exc3\Recorded-PIN\Recording1.wav');
[y2,Fs] = audioread('C:\Users\stama\OneDrive\Desktop\Signal_Processing_Exc1\exc3\Recorded-PIN\Recording2.wav');
[y3,Fs] = audioread('C:\Users\stama\OneDrive\Desktop\Signal_Processing_Exc1\exc3\Recorded-PIN\Recording3.wav');
[y4,Fs] = audioread('C:\Users\stama\OneDrive\Desktop\Signal_Processing_Exc1\exc3\Recorded-PIN\Recording4.wav');

n1 = length(y1);
n2 = length(y2);
n3= length(y3);
n4 = length(y4);

p1 = abs(fft(y1));
p2= abs(fft(y2));
p3= abs(fft(y3));
p4= abs(fft(y4));

f1 = (Fs/n1)*(0:n1-1);
f2 = (Fs/n2)*(0:n2-1);
f3 = (Fs/n3)*(0:n3-1);
f4 = (Fs/n4)*(0:n4-1);

tt1=n1./Fs;
tt2=n2./Fs
tt3=n3./Fs
tt4=n4./Fs

t1=0:tt1/n1:tt1-tt1/n1
t2=0:tt2/n2:tt2-tt2/n2
t3=0:tt3/n3:tt3-tt3/n3
t4=0:tt4/n4:tt4-tt4/n4
%%Decibel convertion of Recordings%%
ydb1=20*abs(log10(p1));
ydb2=20*abs(log10(p2));
ydb3=20*abs(log10(p3));
ydb4=20*abs(log10(p4));
%%first .wav file%%
subplot(4,3,1);
plot(t1(501:650),y1(501:650));
xlabel('t(s)')
subplot(4,3,2);
plot(f1,p1);
axis([700 1480 0 100])
xlabel('f(Hz)')
title('Recording1')
subplot(4,3,3);
plot(f1,ydb1);
axis([700 1480 0 100])
xlabel('f(Hz)')
title('Recording1 in Db')
%%second .wav file%%
subplot(4,3,4);
plot(t2(501:650),y2(501:650));
xlabel('t(s)')
subplot(4,3,5);
plot(f2,p2);
axis([700 1480 0 100])
xlabel('f(Hz)')
title('Recording2')
subplot(4,3,6);
plot(f2,ydb2);
axis([700 1480 0 100])
xlabel('f(Hz)')
title('Recording2 in Db')
%%third .wav file%%
subplot(4,3,7);
plot(t3(501:650),y3(501:650));
xlabel('t(s)')
subplot(4,3,8);
plot(f3,p3);
axis([700 1480 0 100])
xlabel('f(Hz)')
title('Recording3');
subplot(4,3,9);
plot(f3,ydb3);
axis([700 1480 0 100])
xlabel('f(Hz)')
title('Recording3 in Db')
%%fourth .wav file%%
subplot(4,3,10);
plot(t4(501:650),y4(501:650));
xlabel('t(s)')
subplot(4,3,11);
plot(f4,p4);
axis([700 1480 0 100])
xlabel('f(Hz)')
title('Recording4')
subplot(4,3,12);
plot(f4,ydb4);
axis([700 1480 0 100])
xlabel('f(Hz)')
title('Recording4 in Db')