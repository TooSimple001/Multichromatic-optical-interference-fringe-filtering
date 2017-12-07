function [ out_image ] = Data2image(input_data , output_data )
%DATA2IMAGE Summary of this function goes here
%   Detailed explanation goes here
%将数据转化为可视图像
image_height = 1080;
image_width = size(input_data,2);
enlarge_ratio = fix(image_height/max(input_data));
out_image = zeros(image_height,image_width,3);
for i = 1:length(input_data)
  
    out_image(input_data(i).*enlarge_ratio,i,3) = 255;
    out_image((image_height-round(output_data(i))).*enlarge_ratio,i,1) = 255;
end

end

