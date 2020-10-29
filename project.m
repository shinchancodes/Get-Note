clc
clear

fs = 44100;

%%Input
a = audiorecorder(fs,16,1);

disp("Recording Started");
recordblocking(a,3);
disp("Recording stopped");
audio = getaudiodata(a);

clc

%disp("Let's hear the sound......\n")
%sound(audio,44100)
%disp("Press Enter to continue......\n")
%pause

%%Processing
[n,c]=size(audio);
X=fft(audio);
m=abs(X);
%%plot(m);
[f,k]=max(m);
f=fs/n*k;

disp("                      RESULT ")
disp("*************************************************")

if(f>=250 && f<275)
    disp("The note you played is -----   sa ")
  elseif(f>=275 && f<310)
    disp("The note you played is -----    re")  
  elseif(f>=310 && f<340)
    disp("The note you played is -----    ga")
  elseif(f>=340 && f<370)
    disp("The note you played is -----    ma")
  elseif(f>=370 && f<420)
    disp("The note you played is -----    pa")
  elseif(f>=420 && f<460)
    disp("The note you played is -----    dha")
  elseif(f>=460 && f<600)
    disp("The note you played is -----    ni")
end

sound(audio,44100)

