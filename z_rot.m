function r = z_rot(phi)
	r(1).r = [cos(phi), -sin(phi), 0; sin(phi), cos(phi), 0; 0, 0, 1];
	r(1).h = homo_transform(r.r);
	r(1).inv = homo_inverse(r.h);
end
