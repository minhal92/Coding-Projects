% Fill Holes in image & Black To white

 for n = 1:500
  filename = sprintf('%01d.jpg', n);
  if ~exist(filename, 'file') %If image exists read it
      continue; % Skip to bottom of loop.
  end
    filename %Show image number being red at the time
    A = imread(filename);
    
    level = graythresh(A); %greythresh added
    A=im2bw(A,level); 
    
      A = imcomplement(A);
      A = imfill(A,'holes');
       A = imcomplement(A);
     filename = (['',num2str(n),'.jpg']);
    imwrite(A, filename);
    
end
