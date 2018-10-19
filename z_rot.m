function r = z_rot(phi)
%	z_rot(theta) returns the rotation matriz at angle theta about z-azis
%	Usage:
%	ZROT = z_rot(theta)
%	ZROT.r gives the rotation matriz
%	ZROT.h gives the equivalent homogenous matriz (transformation matriz)
%	ZROT.inv gives the inverse of ZROT.h


	r(1).r = [cos(phi), -sin(phi), 0; sin(phi), cos(phi), 0; 0, 0, 1];
	r(1).h = homo_transform(r.r);
	r(1).inv = homo_inverse(r.h);
end
