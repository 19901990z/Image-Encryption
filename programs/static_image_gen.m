for i=1:2000
  for j=1:2000
	for k=1:3  
      static_image(i,j,k) = rand*2*256;
	endfor
  endfor
endfor
imwrite(static_image,"static.jpg");