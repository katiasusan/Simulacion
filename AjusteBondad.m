%asumiendo una distribucion binomial
datos=[6, 7, 3, 4, 7, 3, 7, 2, 6, 3, 7, 8, 2, 1, 3,5, 8, 7];


n=length(datos);
m=9;% numero de regiones
%hallemos el Ni
Ni=zeros(1,m);
Ni(1)=0;
for i=1:n
  for j=2:m
    if datos(i)==j-1
      Ni(j)++;
     end
   end
   
end

%distribucion binomial B(8,p) 
 
%la estimacion de la probabilidad p =
p=1/9;
%hallando pi
pi_=[];
x=0;
for i=1:m 
  pi_(i)=(p^(x)*(1-p)^(8-x))*factorial(8)/(factorial(x)*factorial(8-x));
  x=x+1;
end 


%hallando T
T=0;
for i=1:m
  T=T+((Ni(i)-n*pi_(i))^2)/n*pi_(i);  
end
k=m;
% 1 valor sin conocer
p_value=1-chi2cdf(T, k-1-1);



%                                                                                                            
%>> T
%T =  1.8851
%>> p_value
%p_value =  0.96593

%del  valor p, es evidente que la hipoteisis nula no sera rechazada , de modo que no hay necesidd 
%de una mejor aproximacion. 

(N(i)-n*pi(i))^2)/n*pi(i);  
end
