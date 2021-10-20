function n_pq=humoment(p,q,A) %Value of p,q and image A comes from feature_vec
 
[m,n]=size(A); %Finds dimension of image (m pixels by n pixels).
BW = edge(A,'canny'); %Defines Edge of image, assigns 1 to pixels on the edge and 0 elsewhere. 
%Uses ‘Canny’ Method since it is better than default Sobel.
D = bwdist(BW); %Finds the distance using Euclidean distance method.
 
  m1o=0; %Define mo1 & m1o for iteration purposes.
  mo1=0;
  moo=0;
 %Double for reads the image one column at a time (reads all y pixels when
 %x=1) before moving onto x=2 and reading all y's.
    for x=0:m-1 %Loop though x
        for y=0:n-1 %Loop though y
            if D(x+1,y+1)<3 %Distance pixel is from the edge (<1 means only on edge)
            m1o=m1o+(x)*A(x+1,y+1); %Value increases for moment for each pixel that is read.
            mo1=mo1+(y)*A(x+1,y+1); 
            moo=moo+A(x+1,y+1);
            end
        end 
    end
    
  xx=m1o/moo; 
  yy=mo1/moo; %Finds center of gravity with respect to x & y
    
    
  mu_oo=moo;

    mu_pq=0;
    for ii=0:m-1
        x=ii-xx;
        for jj=0:n-1 %Similar loop for mu_pq's
            y=jj-yy;
            if D(ii+1,jj+1)<3
            mu_pq=mu_pq+(x)^p*(y)^q*A(ii+1,jj+1); 
            end
        end 
    end
    
    gamma=0.5*(p+q)+1; %'gamma=(p+q)+1' if only edge considered.
    n_pq=mu_pq/moo^(gamma); %Centralizes the moment making it invariant.
 


