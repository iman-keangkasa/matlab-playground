function r = y_trans(y)
%	y_trans(y)
%	returns a translation vector with x displacement
%	Usage:
%	Y = x_trans(y)
%	Y.v gives column vector
%	Y.h gives homogenous matrix
% 	Y.inverse gives inverse of X.h

	r(1).v = [0 y 0].';
	r(1).h = homo_transform(r.v);
	r(1).inv = homo_inverse(r.h);
end
