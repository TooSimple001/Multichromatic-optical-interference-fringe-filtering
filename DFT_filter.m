clc;
clear;
ori_image = rgb2gray(imread('��-1.bmp'));%��ȡ����ͼ��
out_image = ori_image;

% for i= 1:size(ori_image,1);
%      line_data = ori_image(i,:);         %ȡ����ͼ��һ������
%      out_data = Frequency_filter(line_data,length(line_data),2,15);
%      out_image(i,:) = out_data; 
% end 
% figure(1)
% imshow(ori_image);
% figure(2)
% imshow(out_image);
% imwrite(out_image,'��-3-���.bmp')


% 
% 
% %%show һ������ʱ���ɴ�ע�͹ۿ�
 line_data1 = double(ori_image(300,:));  

out_data1 = Frequency_filter(line_data1,length(line_data1),2,15);

figure(1)
plot(1:length(line_data1)/4,line_data1(1:480),'-b',1:length(out_data1)/4,out_data1(1:480),'-r');
print('-dpng','��3-1.jpg');
figure(2)
plot(1:length(line_data1)/4,line_data1(481:960),'-b',1:length(out_data1)/4,out_data1(481:960),'-r');
print('-dpng','��3-2.jpg');
figure(3)
plot(1:length(line_data1)/4,line_data1(961:1440),'-b',1:length(out_data1)/4,out_data1(961:1440),'-r');
print('-dpng','��3-3.jpg');
figure(4)
plot(1:length(line_data1)/4,line_data1(1441:1920),'-b',1:length(out_data1)/4,out_data1(1441:1920),'-r');
print('-dpng','��3-4.jpg');
% % figure(2)
% % plot(1:length(line_data2),line_data2,'-b',1:length(out_data2),out_data2,'-r');
% % figure(3)
% % plot(1:length(line_data3),line_data3,'-b',1:length(out_data3),out_data3,'-r');
% % image = Data2image(line_data1,out_data1);
% % imshow(image);
% %%figure�жԱȽ�������ͼƬ
% 
% 
% 


% 
% n=1:1920;
% f= cos(n)+cos(20*n)+cos(200*n);
% fft_result = fftshift(fft(f,length(f)));
% 
% % 
% line_data = ori_image(500,:);         %ȡ����ͼ��һ������
% out_data = Frequency_filter(line_data,length(line_data),2,15);
% %F_line_data = fftshift(fft(line_data,length(line_data)));%����N��FFT
% % figure(2)
% % %stem(F_line_data,'filled');
% plot(1:length(out_data),out_data,'-b');   
% % 
% %����Ƶ���˲�
% %2~15��Ϊ�����ź����ڣ���Ӧ��DFT������Ҫ��Ƶ�׵�Ϊ128~960�㣬Ƶ���������������
% % filter = zeros(1,1920);     
% % filter(960-128:960+128) = 1;       
% % Frequency_filter_result = filter.*F_line_data;
% % figure(3)
% % plot(1:length(Frequency_filter_result),Frequency_filter_result,'-b');
% % 
% % out_line = abs(ifft(Frequency_filter_result,length(Frequency_filter_result)));
% % figure(4)
% % plot(1:length(out_line),out_line,'-b');