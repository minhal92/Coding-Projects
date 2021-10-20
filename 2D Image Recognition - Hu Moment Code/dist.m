A=imread('1.jpg');

% imshow(A);
%A = im2bw(A);
A = rgb2gray(A);
BW = edge(A,'canny');
% imshow(BW);
D = double(bwdist(BW));
xlswrite('results.xlsx',A,1,'A1'); 
xlswrite('results.xlsx',BW,2,'A1'); 
xlswrite('results.xlsx',D,3,'A1'); 
