%Rescale the image

 for n = 1:1
    
  filename = sprintf('%01d.jpg', n);
  if ~exist(filename, 'file') %If image exists read it
      continue; % Skip to bottom of loop.
  end
    filename %Show image number being read at the time
    
        A = imread(filename);
        
       scale = .5 %Rescale to 10%
               A = imresize(A, scale); %Rescale the image
               
               
%               A = imcomplement(A);
%         angle=45 %Rotate the image
%         A = imrotate(A,angle);
%        A = imcomplement(A);
        
     filename = (['',num2str(n+2),'.jpg']);
    imwrite(A, filename);
    
end
