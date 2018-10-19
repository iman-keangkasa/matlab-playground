function r = y_trans(y)
	r(1).v = [0 y 0].';
	r(1).h = homo_transform(r.v);
	r(1).inv = homo_inverse(r.h);
end
