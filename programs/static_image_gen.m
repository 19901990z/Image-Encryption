function static_image_gen
	global static_image_name;
	for i=1:2000
		for j=1:2000
			temp = floor(rand*2);
%			static_image(i,j) = temp;
			static_image(i,j,1) = temp;
			static_image(i,j,2) = temp;
			static_image(i,j,3) = temp;
		endfor
	endfor
%	imwrite(static_image,"static.jpg");
	imwrite(static_image,static_image_name);
	
endfunction