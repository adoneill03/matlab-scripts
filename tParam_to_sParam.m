function [ S ] = tParam_to_sParam( T11, T12, T21, T22 )
%tParam_to_sParam( T11, T12, T21, T22 )
%   Given two port T Parameters, this returns the the two port S Parameters
%   Input is the T parameter matrix    

S = [T21/T11,T22-((T21*T12)/T11); T11^-1, -T12/T11];

end
