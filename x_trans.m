function r = x_trans(x)
	r(1).v = [x;0;0];
	r(1).h = homo_transform(r.v);
	r(1).inv = homo_inverse(r.h);
end
