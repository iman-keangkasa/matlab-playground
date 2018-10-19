function s = x_rot(theta)

%	x_rot(theta) returns the rotation matrix at angle theta about x-axis
%	Usage:
%	XROT = x_rot(theta)
%	XROT.r gives the rotation matrix
%	XROT.h gives the equivalent homogenous matrix (transformation matrix)
%	XROT.inv gives the inverse of XROT.h

	s(1).r = [1, 0, 0; 0, cos(theta), -sin(theta); 0, sin(theta), cos(theta)];
	s(1).h = homo_transform(s.r);
	s(1).inv = homo_inverse(s.h);
end
