function r=inverse_homo(array)
% INVERSE_HOMO gets the inverse of DH homogeneous transformation matrix (HTM)
% C = INVERSE_HOMO(ARRAY) gets the inverse of ARRAY
% ARRAY can be a translation vector, rotational matrix or HTM with the former two will be converted to their HTM equivalence.

	[row column] = size(array);
	scale = [ 0 0 0 1];
	if row == 3
			if column == 3
					array = array.';
					r = homo_transform(array);
			elseif column == 1
					array = -array;
					r = homo_transform(array);
			end
	elseif row == 4
			rot_matrix = array(1:3,1:3);
			transform_matrix = array(1:3,4);
			r = simplify(cat(1,cat(2,rot_matrix.',-rot_matrix.'*transform_matrix),scale));
	end
end
