static_image = zeros(1920,1080);
for i=1:1920
  for j=1:1080
    static_image(i,j) = rand*2*256;
  endfor
endfor
imwrite(static_image,"static.jpg");