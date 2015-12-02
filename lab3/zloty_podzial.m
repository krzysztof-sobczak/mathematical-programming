function x_min = zloty_podzial(f, a, b, epsilon)

iter= 50;                       
c=((sqrt(5)-1)/2);      
k=0;                    

% równowa?ne x1=b-c(b-a)
x1=a+(1-c)*(b-a);       
x2=a+c*(b-a);

f_x1=f(x1);             
f_x2=f(x2);

while ((abs(b-a)>epsilon) && (k<iter))
    k=k+1;
    if(f_x1<f_x2)
        b=x2;
        x2=x1;
        % równowa?ne x1=b-c(b-a)
        x1=a+(1-c)*(b-a);
        
        f_x1=f(x1);
        f_x2=f(x2);
        
    else
        a=x1;
        x1=x2;
        x2=a+c*(b-a);
        
        f_x1=f(x1);
        f_x2=f(x2);

    end
    
    k=k+1;
end


if(f_x1<f_x2)
    sprintf('x_min=%f', x1)
    sprintf('f(x_min)=%f ', f_x1)
else
    sprintf('x_min=%f', x2)
    sprintf('f(x_min)=%f ', f_x2)
end