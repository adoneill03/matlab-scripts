function [ T ] = sParam_to_tParam( s11, s12, s21, s22 )
%tParam_to_sParam( S11, S12, S21, S22 )
%   Given two port S Parameters, this returns the the two port T Parameters
%   Input is the S parameter matrix    

T = [s21^-1,(-s21/s22);(s11/s21),(s12-(s11*s22)/s21)];

end
