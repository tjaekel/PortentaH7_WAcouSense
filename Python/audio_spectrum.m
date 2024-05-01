%% Signal acquisition
clear all
close all
Fs=44100; %default sampling frequency
deviceReader = audioDeviceReader;
h=plot(0,0, 'LineWidth',2);
xlim([0 5e3]);
ylim([0 10e-3]);
grid on
xlabel('Frequency,Hz');
ylabel('Ampl.');
title('FFT spectrum of the signal');
ylimits=ylim;
peaktext=text(Fs/8,ylimits(end),' ');
acquiredAudio=[];
whitebg([0 0 0]); % dark background
frame=0.1 % length in sec of each "frame" -- the longer -> more accurate
while true
    tic
    while toc < frame  % each frame lasts "frame" seconds
        acquiredAudio = [acquiredAudio; deviceReader()];
    end
y=acquiredAudio;
%time array
t=[1:length(acquiredAudio)]/44100;
N=length(acquiredAudio); %number of samples
df=Fs/N; %step in frequency
freq=-Fs/2:df:Fs/2-df; % frequency domain
%% Fast Furier Transform (FFT)
YF=fft(y); %fft of signal y
YF=fftshift(YF)/N;
% updating data on the plot
h.XData=freq;
h.YData=abs(YF);
% finding maximum
M=max(abs(YF));
max_freq=find(abs(YF) == M);
% label maximum
peaktext.Position=[freq(max_freq(end)), M, 0];
peaktext.String=num2str(freq(max_freq(end)));
drawnow;
acquiredAudio=[]; % next frame
end

