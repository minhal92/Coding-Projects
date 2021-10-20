function [M]=feature_vec(~)
 
  for n = 1:1125 %All images in folder read .
  filename = sprintf('%01d.jpg', n);
  if ~exist(filename, 'file') %If image exists read it
      continue; % Skip to bottom of loop.
  end
    filename %Show image number being red at the time
    A = imread(filename);
 
 level = graythresh(A); %Greythresh added
 A=double(im2bw(A,level)); %Converts image into binary 
  %Assigns values for pixels. Black=0, White=1
 A = imcomplement(A); %Complimented so it assigns Black=1, White=0
  
% First Moment
n20=humoment(2,0,A); %Calls function humoment, value of p,q and image A is fed
n02=humoment(0,2,A); %into the function everytime
M1=n20+n02; %Hu's invarient moment is calculated

% Second Moment
n11=humoment(1,1,A);
M2=(n20-n02)^2+4*n11^2;
 
% Third Moment
n30=humoment(3,0,A);
n12=humoment(1,2,A);
n21=humoment(2,1,A);
n03=humoment(0,3,A);
M3=(n30-3*n12)^2+(3*n21-n03)^2;

% Fourth Moment
M4=(n30+n12)^2+(n21+n03)^2;

% Sixth Moment
n11=humoment(1,1,A);
M6=(n20-n02)*((n30+n12)^2-(n21+n03)^2)+4*n11*(n30+n12)*(n21+n03);
 
% Seventh Moment
M7=(3*n21-n03)*(n30+n12)*((n30+n12)^2-3*(n21+n03)^2)+(3*n12-n30)*(n03+n21)*( 3*(n30+n12)^2-(n21+n03)^2 );
     
 
% The vector M is a row vector containing M1,M2,....M7
M=[M1,M2,M3,M4,M6,M7];

xlswrite('humoment_glasses_filled_BW==1.xlsx',M,1,sprintf('A%d',n)); %Tabulate data into excel directly

  end