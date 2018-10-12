function r=homo_trans(array)
	I_mat =[1 0 0; 0 1 0; 0 0 1];
	scale = [0 0 0 1];
	zero_column = [0; 0; 0];
	[row col] = size(array);
	if col == 3
			rot_1 = cat(2,array,zero_column);
			r = cat(1,rot_1,scale);
	elseif col == 1
			trans_1 = cat(2,I_mat,array);
			r = cat(1,trans_1, scale);
	end
		
end
