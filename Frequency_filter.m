function [ Data_output ] = Frequency_filter(Data_input,length_DFT, minP, maxP )
%FREQUENCY_FILTER Summary of this function goes here
%   Detailed explanation goes here
%输入为3参数：
%1.输入1xN的信号Data_input; 2.DFT序列长度 3.所需信号的最小周期点数; 4.所需信号的最大周期点数;
%输出滤波后的信号Data_output
F_data = fftshift(fft(Data_input,length_DFT));%计算N点FFT,并将低频shift到中心点
%构造频域滤波
%例：2~15点为所需信号周期，对应的DFT中所需要的频谱点为128~960点，频谱中其余分量置零
start_point = length_DFT/2 - length_DFT/maxP ;
stop_point = length_DFT/2 + length_DFT/maxP ;
F_filter = ones(1,length_DFT);     
F_filter(start_point:stop_point) = 0;       
Frequency_filter_result = F_filter.*F_data;
Data_output = (abs(ifft(Frequency_filter_result,length(Frequency_filter_result))));
%Data_output =Data_input -uint8(Data_output);
end

