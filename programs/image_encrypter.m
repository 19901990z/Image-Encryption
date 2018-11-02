function image_encrypter
	global size_x size_y image W N1 N2 encrypted_image_name const;
	size(N1);
	image = im2double(image);
	const = im2double(const);
	M1 = W(1)*image + W(2)*N1;
	M2 = W(3)*(const-image) + W(4)*N2;
	E = W(5)*M1 + W(6)*M2;
	save(encrypted_image_name,'E');
endfunction
