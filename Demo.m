clc;
clear;
ori_image = rgb2gray(imread('��-2.bmp'));%��ȡ����ͼ��
out_image = ori_image;
line_data1 = double(ori_image(20,:));  
out_data1 = Frequency_filter_lpf(line_data1,length(line_data1),2,15);
figure(1)
plot(1:length(line_data1),line_data1,'-b',1:length(out_data1),out_data1,'-r');
%plot(1:length(line_data1),line_data1,'-b');
figure(2)
subplot(221)
plot(1:length(line_data1),line_data1,'-b');
title('ԭʼ�ź�');
fft_result = fftshift(fft(line_data1,length(line_data1)));
filter = zeros(1,1920);     
filter(960-128:960+128) = 1;       
Frequency_filter_result = filter.*fft_result;
out_line = (abs(ifft(Frequency_filter_result,length(Frequency_filter_result))));
subplot(222)
plot(1:length(fft_result),fft_result,'-b');
title('ԭʼ�ź�Ƶ��');
subplot(223)
plot(1:length(Frequency_filter_result),Frequency_filter_result,'-b');
title('ԭʼ�ź�LPF��Ƶ��');
subplot(224)
plot(1:length(out_line),out_line,'-b');
title('ԭʼ�ź�LPF��ʱ��');