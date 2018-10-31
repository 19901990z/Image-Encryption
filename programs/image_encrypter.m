function image_encrypter
	global size_x size_y image W N1 N2 encrypted_image_name;
	for i=1:size_x
		for j=1:size_y
			for k=1:3
				const(i,j,k) = 255;
			endfor
		endfor
	endfor
	size(N1)
	imag = im2double(image);
%	N1 = im2double(N1);
%	N2 = im2double(N2);
	const = im2double(const);
	M1 = W(1)*imag + W(2)*N1;
	M2 = W(3)*(const-imag) + W(4)*N2;
	E = W(5)*M1 + W(6)*M2;
	save(encrypted_image_name,'E');
endfunction
