%asumiendo una distribucion exponencial
datos=[6, 7. 3, 4, 7, 3, 7, 2, 6, 3, 7, 8. 2, 1, 3,5, 8, 7];
m=8;
n=length(datos);

%hallemos el Ni
Ni=zeros(1,8);
for i=1:n
  for j=1:m
    if datos(i)==j
      Ni(j)++;
     end
   end
   
end

%distribucion binomial B(8,p) 
 
%la estimacion de la probabilidad p =