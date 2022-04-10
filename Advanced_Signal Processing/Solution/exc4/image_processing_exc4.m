close all; 
clear all;
img0= imread('C:\Users\stama\OneDrive\Desktop\Signal_Processing_Exc1\exc4\ASKHSH1.4\Test-Images\cg-1.png','png'); 
img0= rgb2gray(img0); % change to gray
img1= imread('C:\Users\stama\OneDrive\Desktop\Signal_Processing_Exc1\exc4\ASKHSH1.4\Test-Images\im-1.gif','gif'); 
img2= imread('C:\Users\stama\OneDrive\Desktop\Signal_Processing_Exc1\exc4\ASKHSH1.4\Test-Images\im-2.png','png');
img2=rgb2gray(img2);
img3= imread('C:\Users\stama\OneDrive\Desktop\Signal_Processing_Exc1\exc4\ASKHSH1.4\Test-Images\im-3.png','png');
img3=rgb2gray(img3);
%%FIRST IMAGE SUBPLOTS%%
subplot(4, 4, 1);
imshow(img0, []);
subplot(4,4,2);
Im0=fftshift(log(1+abs(fft2(img0))));
imshow(Im0,[]);
subplot(4,4,3);
[M N]=size(Im0);
J0=Im0(M/4:3/4*M,N/4:3/4*N);
imshow(J0,[]);
%%SECOND IMAGE SUBPLOTS%%
subplot(4, 4, 5);
imshow(img1, []);
subplot(4,4,6);
Im1=fftshift(log(1+abs(fft2(img1))));
imshow(Im1,[]);
subplot(4,4,7);
[M1 N1]=size(Im1);
J1=Im1(M1/4:3/4*M1,N1/4:3/4*N1);
imshow(J1,[]);
%%THIRD IMAGE SUBPLOTS%%
subplot(4, 4, 9);
imshow(img2, []);
subplot(4,4,10);
Im2=fftshift(log(1+abs(fft2(img2))));
imshow(Im2,[]);
subplot(4,4,11);
[M2 N2]=size(Im2);
J2=Im2(M2/4:3/4*M2,N2/4:3/4*N2);
imshow(J2,[]);
%%FOURTH IMAGE SUBPLOTS%%
subplot(4, 4, 13);
imshow(img3, []);
subplot(4,4,14);
Im3=fftshift(log(1+abs(fft2(img3))));
imshow(Im3,[]);
subplot(4,4,15);
[M3 N3]=size(Im3);
J3=Im3(M3/4:3/4*M3,N3/4:3/4*N3);
imshow(J3,[]);