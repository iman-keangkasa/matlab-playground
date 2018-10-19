function s = x_rot(theta)
	s(1).r = [1, 0, 0; 0, cos(theta), -sin(theta); 0, sin(theta), cos(theta)];
	s(1).h = homo_transform(s.r);
	s(1).inv = homo_inverse(s.h);
end
