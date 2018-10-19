function r = z_trans(z)
	r(1).v = [0;0;z];
	r(1).h = homo_transform(r.v)
	r(1).inv = homo_inverse(r.h)
end
