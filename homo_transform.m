function r=homo_transform(array)
%Convert rotational matrix or translational vextor to their equivalent Homogenous transformation matrix (HTM)

	I_mat =[1 0 0; 0 1 0; 0 0 1];
	scale = [0 0 0 1];
	zero_column = [0; 0; 0];
	[row col] = size(array);
	switch row*col
		case 9
			rot_1 = cat(2,array,zero_column);
			r = cat(1,rot_1,scale);
		case 3
			trans_1 = cat(2,I_mat,array);
			r = cat(1,trans_1, scale);
		
		otherwise
			disp("Error: Check *_trans.m or *_rot.m")
	end
		
end
