%main script
%Keshav Bimbraw and Avneesh Sarwate
clear all

%reading track file
[y,Fs] = audioread('track.mp3');

%first column of stereo file
y = y(:,1);

%plotting 20000 samples
%plot(y(10000:30000));

%debugging to just hear the actual sound file
%sound(y(:,1),Fs);
%pause(40);

%y = y and bitDepth = 4
yQuant = quantizeAudio(y, 4);

%plotting output - 20000 samples
plot(yQuant(10000:30000));

%plotting error signal
%plot(y(10000:30000)-yQuant(10000:30000));

%just to hear the output
sound(yQuant,Fs);

