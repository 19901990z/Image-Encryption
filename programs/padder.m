function padder
  global block_size_x block_size_y size_x size_y;
  global image path_to_image padded_image_name;
  to_add_x = block_size_x - mod(size_x,block_size_x);
  to_add_y = block_size_y - mod(size_y,block_size_y);
  add_right = zeros(to_add_x,size_y,3);
  add_bottom =  zeros(size_x+to_add_x,to_add_y,3);
  img = image;
  img = [img;add_right];
  img = [img add_bottom];
  clear -global image
  global image = img;
  refresh_image_sizes;
  imwrite(img,padded_image_name);
endfunction
