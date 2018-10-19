function r = z_trans(z)
%	z_trans(z)
%	returns a translation vector with z displacement
%	Usage:
%	z = z_trans(z)
%	z.v gives column vector
%	z.h gives homogenous matriz
% 	z.inverse gives inverse of z.h

	r(1).v = [0;0;z];
	r(1).h = homo_transform(r.v)
	r(1).inv = homo_inverse(r.h)
end
