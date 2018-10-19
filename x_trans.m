function r = x_trans(x)
%	x_trans(x)
%	returns a translation vector with x displacement
%	Usage:
%	X = x_trans(x)
%	X.v gives column vector
%	X.h gives homogenous matrix
% 	X.inverse gives inverse of X.h

	r(1).v = [x;0;0];
	r(1).h = homo_transform(r.v);
	r(1).inv = homo_inverse(r.h);
end
