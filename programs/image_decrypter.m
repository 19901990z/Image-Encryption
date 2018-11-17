function image_decrypter
	global const encrypted_image_name decrypted_image_name W N1 N2;
	E = load(encrypted_image_name).E;
%	E = imread('enc.jpg');  %FAILURE
%	size(E)
%	size(const)
	D = (E - W(6)*W(3)*const - (W(5)*W(2)*N1) - (W(6)*W(4)*N2))/(W(5)*W(1) - W(6)*W(3));
	imwrite(D,decrypted_image_name);
	clear -global image;
	global image = D;
endfunction
