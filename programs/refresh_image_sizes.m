function refresh_image_sizes
  %Image sizes
  global size_y size_x image block_size_x block_size_y;
  [size_x,size_y,temp] = size(image);
  
  clear -global block_num_x block_num_y;
  global block_num_x = size_x/block_size_x;
  global block_num_y = size_y/block_size_y;
endfunction
