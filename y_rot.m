function s=y_rot(theta)
%	y_rot(theta) returns the rotation matrix at angle theta about x-axis
%	Usage:
%	YROT = y_rot(theta)
%	YROT.r gives the rotation matrix
%	YROT.h gives the equivalent homogenous matrix (transformation matrix)
%	YROT.inv gives the inverse of YROT.h


	s(1).r=[cos(theta), 0, sin(theta); 0, 1, 0; -sin(theta), 0, cos(theta)];
	s(1).h=homo_transform(s.r);
	s(1).inv = homo_inverse(s.h);
end
