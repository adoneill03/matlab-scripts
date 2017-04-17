function [ ESB ] = Essential_Bandwidth( Pf,percent)
%Essential_Bandwidth( Pf,percent ) 
%   Calculates essential bandwidth given a fourier transform and percent
%   containment

fun = matlabFunction(abs(Pf)^2);
bw = percent*integral(fun,-Inf,Inf);
n= .001; % resolution
percent  = .99;
fun = @(f) (abs(2*sinc(2*f))).^2 ;
b1 = 0;
val = 0;
bw = percent*integral(fun,-Inf,Inf);

while val<bw
   val = integral(fun,-b1,b1);
   b1 = b1+n;
end
disp(b1);
disp('done');

end
