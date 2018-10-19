function s=y_rot(theta)
	s(1).r=[cos(theta), 0, sin(theta); 0, 1, 0; -sin(theta), 0, cos(theta)];
	s(1).h=homo_transform(s.r);
	s(1).inv = homo_inverse(s.h);
end
