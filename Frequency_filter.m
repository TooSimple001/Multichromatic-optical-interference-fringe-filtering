function [ Data_output ] = Frequency_filter(Data_input,length_DFT, minP, maxP )
%FREQUENCY_FILTER Summary of this function goes here
%   Detailed explanation goes here
%����Ϊ3������
%1.����1xN���ź�Data_input; 2.DFT���г��� 3.�����źŵ���С���ڵ���; 4.�����źŵ�������ڵ���;
%����˲�����ź�Data_output
F_data = fftshift(fft(Data_input,length_DFT));%����N��FFT,������Ƶshift�����ĵ�
%����Ƶ���˲�
%����2~15��Ϊ�����ź����ڣ���Ӧ��DFT������Ҫ��Ƶ�׵�Ϊ128~960�㣬Ƶ���������������
start_point = length_DFT/2 - length_DFT/maxP ;
stop_point = length_DFT/2 + length_DFT/maxP ;
F_filter = ones(1,length_DFT);     
F_filter(start_point:stop_point) = 0;       
Frequency_filter_result = F_filter.*F_data;
Data_output = (abs(ifft(Frequency_filter_result,length(Frequency_filter_result))));
%Data_output =Data_input -uint8(Data_output);
end

