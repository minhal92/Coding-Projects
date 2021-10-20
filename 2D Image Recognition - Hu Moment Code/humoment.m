function n_pq=humoment(p,q,A)
 
[m,n]=size(A);
al=-1; %Value of Alpha Factor is inserted into here

 moo=0;
 m1o=0;
 mo1=0;
%These mass moments are used to calculate the center of gravity of the
%image.
    for x=0:m-1
        for y=0:n-1
            moo=moo+A(x+1,y+1);
            m1o=m1o+(x)*A(x+1,y+1); 
            mo1=mo1+(y)*A(x+1,y+1); 
        end 
    end
   
  xx=m1o/moo;
  yy=mo1/moo;
        
    %After the center of gravity has been calculated the mass moments could
    %be recaualted while being multiplied by the 'Alpha Factor'

    mu_pq=0;
    for ii=0:m-1
        x=ii-xx;
        for jj=0:n-1
            y=jj-yy;
            if ii==xx && jj==yy  %Protection against divide by 0 for neg alpha
            mu_pq=mu_pq+0; 
            else
            mu_pq=mu_pq+(x)^p*(y)^q*A(ii+1,jj+1)*((sqrt(x^2+y^2))^al);
            %Multiplied by alpha factor. For value of alpha =-1 this would
            %be multiplying by (1/(Distance from Center^Alpha)) Since
            %distance from the center is sqrt((x-x_bar)^2+(y-y_bar)^2)
            %where x_bar and y_bar are center of gravity of the image
            end
        end 
    end

    gamma=(p+q+al+2)/2; %Corrected gamma due to introducation of alpha
    
    n_pq=mu_pq/moo^(gamma);