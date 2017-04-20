function [ ESB ] = Essential_Bandwidth( Pf,percent)
%Essential_Bandwidth( Pf,percent ) 
%   Calculates essential bandwidth given a fourier transform and percent
%   containment

fun = matlabFunction(abs(Pf)^2);
bw = percent*integral(fun,-Inf,Inf);
n= .001; % resolution
b1 = 0.001;
val = 0;
bw = percent*integral(fun,-Inf,Inf);

while val<bw
   val = integral(fun,-b1,b1);
   b1 = b1+n;
end
ESB = b1
end
