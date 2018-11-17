function image_histogram
	global color image size_x size_y;
	histo = zeros(1,257);
	x = image(:,:,color);
	save('asd.dat','x');
	for i = 1:size_x
		for j = 1:size_y
			if(image(i,j,color)<0)
				histo(1)++;
			else
				histo(abs(round(image(i,j,color)*256))+1)++;
			endif
		endfor
	endfor
	save('temp','histo');
	x = 1:257;
	plot(x,histo);
endfunction
