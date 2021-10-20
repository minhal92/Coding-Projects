% Fill Holes in image & Black To white

% To re-write file names run the script until it stops itself (due to
% error) That is the missing filename, then subtract 1 from num2str(n) e.g.
% name it num2str(n-1). When it stops the next time make it num2str(n-2).
% Do this for all missing files. If they are many missing in a row you can
% subtract appropriate amount. Also each time you do this change  for n =
% 1:500 from  for n = (whichever number you stopped at):500. E.g. change
% starting value of n
 for n = 179:199
  filename = sprintf('%01d.jpg', n);

    filename %Show image number being red at the time
    A = imread(filename);
    

     filename = (['',num2str(n+59),'.jpg']); %Will write file 2 as 1 etc
     % when you subtract from n, e.g. change n to n-1
    imwrite(A, filename);
    
end
